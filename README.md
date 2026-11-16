# ELHEM Token

Projet pédagogique réalisé par **ELHEM** pour comprendre la création d’un token ERC-20 en Solidity et son déploiement avec Remix.

Le contrat est disponible dans [FGT.sol](FGT.sol). Il utilise OpenZeppelin Contracts **5.4.0**, avec une version fixée dans l’import.

| Propriété | Valeur |
| --- | --- |
| Nom | ELHEM Token |
| Symbole | FGT |
| Offre totale | 1 000 000 FGT |
| Décimales | 18, héritées d’ERC20 |
| Destinataire initial | Compte qui déploie le contrat |

Le `constructor` s’exécute une seule fois, au déploiement. Il appelle `_mint` pour créer l’ensemble des tokens et les attribuer à `msg.sender`, l’adresse du compte qui déploie directement le contrat. L’offre est fixe, car la création des tokens intervient uniquement dans le constructeur.

Les quantités sont stockées en unités entières. Avec 18 décimales, un FGT correspond à `10 ** 18` unités. L’offre totale enregistrée vaut donc `1000000000000000000000000` unités.

Les principales fonctions héritées permettent de consulter ou d’utiliser le token.

- `name()` et `symbol()` renvoient son nom et son symbole.
- `decimals()` renvoie `18`.
- `totalSupply()` renvoie l’offre totale en unités de base.
- `balanceOf(adresse)` renvoie le solde d’une adresse en unités de base.
- `transfer(adresse, montant)` transfère des tokens à une autre adresse. Le montant est exprimé en unités de base.

Pour essayer le contrat dans [Remix](https://remix.ethereum.org/), suivre ces étapes.

1. Créer un fichier `FGT.sol` et y copier le contenu du fichier de ce dépôt.
2. Sélectionner Solidity **0.8.20** dans le compilateur, puis compiler le fichier.
3. Ouvrir **Deploy & Run Transactions**, sélectionner **Remix VM** et le contrat **FGT**, puis cliquer sur **Deploy**.
4. Dans **Deployed Contracts**, vérifier `name()`, `symbol()`, `decimals()` et `totalSupply()`.
5. Appeler `balanceOf` avec l’adresse du compte de déploiement. Avant tout transfert, le solde doit être égal à l’offre totale.

Pour afficher les tokens dans MetaMask, déployer ensuite le contrat depuis le compte MetaMask sur le réseau de test utilisé pour le cours, puis ajouter l’adresse du contrat comme token personnalisé sur ce même réseau.
