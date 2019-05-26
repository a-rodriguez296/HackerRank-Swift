public static Node lca(Node root, int v1, int v2) {
        int auxV1 = v1;
        int auxV2 = v2;

        //Validation
        if (v1 > v2) {
            auxV1 = v2;
            auxV2 = v1;
        }

          //Base case
          if (root.data >= auxV1 && root.data <= auxV2) {
              
              return root;
          } else {
              
              //Left case
              if (root.data > auxV2) {
                  return lca(root.left, auxV1, auxV2);
              } 
              //Right case
              else {
                  return lca(root.right, auxV1, auxV2);
              }

          }

    }