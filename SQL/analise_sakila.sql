USE sakila;


-- =========================================================
-- 01. FATURAMENTO TOTAL
-- =========================================================

SELECT
    ROUND(SUM(amount), 2) AS faturamento_total
FROM payment;


-- =========================================================
-- 02. QUANTIDADE DE LOCAÇÕES
-- =========================================================

SELECT
    COUNT(rental_id) AS quantidade_locacoes
FROM rental;


-- =========================================================
-- 03. TICKET MÉDIO
-- =========================================================
-- Ticket médio = faturamento total / quantidade de pagamentos

SELECT
    ROUND(SUM(amount) / COUNT(payment_id), 2) AS ticket_medio
FROM payment;


-- =========================================================
-- 04. FATURAMENTO MENSAL
-- =========================================================

SELECT
    DATE_FORMAT(payment_date, '%Y-%m') AS mes,
    ROUND(SUM(amount), 2) AS faturamento
FROM payment
GROUP BY DATE_FORMAT(payment_date, '%Y-%m')
ORDER BY mes;


-- =========================================================
-- 05. TOP 10 FILMES MAIS ALUGADOS
-- =========================================================

SELECT
    f.title AS filme,
    COUNT(r.rental_id) AS quantidade_locacoes
FROM rental r
INNER JOIN inventory i
    ON r.inventory_id = i.inventory_id
INNER JOIN film f
    ON i.film_id = f.film_id
GROUP BY f.film_id, f.title
ORDER BY quantidade_locacoes DESC
LIMIT 10;


-- =========================================================
-- 06. TOP 10 FILMES POR FATURAMENTO
-- =========================================================

SELECT
    f.title AS filme,
    ROUND(SUM(p.amount), 2) AS faturamento
FROM payment p
INNER JOIN rental r
    ON p.rental_id = r.rental_id
INNER JOIN inventory i
    ON r.inventory_id = i.inventory_id
INNER JOIN film f
    ON i.film_id = f.film_id
GROUP BY f.film_id, f.title
ORDER BY faturamento DESC
LIMIT 10;


-- =========================================================
-- 07. ANÁLISE POR CLIENTE
-- =========================================================

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS cliente,
    COUNT(r.rental_id) AS quantidade_locacoes,
    ROUND(SUM(p.amount), 2) AS faturamento
FROM customer c
LEFT JOIN rental r
    ON c.customer_id = r.customer_id
LEFT JOIN payment p
    ON r.rental_id = p.rental_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name
ORDER BY faturamento DESC;


-- =========================================================
-- 08. ANÁLISE POR CIDADE
-- =========================================================

SELECT
    ci.city AS cidade,
    COUNT(DISTINCT c.customer_id) AS quantidade_clientes,
    COUNT(r.rental_id) AS quantidade_locacoes,
    ROUND(SUM(p.amount), 2) AS faturamento
FROM customer c
INNER JOIN address a
    ON c.address_id = a.address_id
INNER JOIN city ci
    ON a.city_id = ci.city_id
LEFT JOIN rental r
    ON c.customer_id = r.customer_id
LEFT JOIN payment p
    ON r.rental_id = p.rental_id
GROUP BY ci.city_id, ci.city
ORDER BY faturamento DESC;