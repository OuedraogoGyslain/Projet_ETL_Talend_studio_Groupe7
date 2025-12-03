-- CREATE DATABASE + STRUCTURE ONLY

CREATE DATABASE IF NOT EXISTS `phones`
    DEFAULT CHARACTER SET utf8mb4
    COLLATE utf8mb4_general_ci;

USE `phones`;

-- Structure table smartphone_prices
CREATE TABLE `smartphone_prices` (
  `id` int(11) NOT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `vendeur` varchar(50) DEFAULT NULL,
  `prix_magasin` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Index
ALTER TABLE `smartphone_prices`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT
ALTER TABLE `smartphone_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
