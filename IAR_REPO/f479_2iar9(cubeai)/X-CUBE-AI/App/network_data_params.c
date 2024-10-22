/**
  ******************************************************************************
  * @file    network_data_params.c
  * @author  AST Embedded Analytics Research Platform
  * @date    2024-10-15T14:55:58+0800
  * @brief   AI Tool Automatic Code Generator for Embedded NN computing
  ******************************************************************************
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  ******************************************************************************
  */

#include "network_data_params.h"


/**  Activations Section  ****************************************************/
ai_handle g_network_activations_table[1 + 2] = {
  AI_HANDLE_PTR(AI_MAGIC_MARKER),
  AI_HANDLE_PTR(NULL),
  AI_HANDLE_PTR(AI_MAGIC_MARKER),
};




/**  Weights Section  ********************************************************/
AI_ALIGNED(32)
const ai_u64 s_network_weights_array_u64[71] = {
  0xbdcad3173f0354d4U, 0x3ef1b4033d90ea10U, 0x3f8405d980000000U, 0x3fa6c2353f08b896U,
  0x3f36e547bf5680e6U, 0xbdaebaa3bebe2ac8U, 0xbff1b393bf6335f4U, 0xbfb32b45bece59c4U,
  0x3f0d3f97bd90bad9U, 0xbfcb50a23ee95844U, 0xbe9b43ff3e9e523aU, 0x4009a01abe9be73dU,
  0x3f737f0d3dc7179cU, 0xbeb270fd3e87b824U, 0x3f9ea040be31e6d6U, 0xbe48c3a6bebbd2b7U,
  0x3d2107983e56804aU, 0xbecec17dbdd0b1feU, 0x3d6ea9ba3d0816c2U, 0xbe129cf03de9373cU,
  0x3e0b9ffabdfcdbb4U, 0x3e89adefbe9c02b2U, 0xbe27cc8cbe9d477eU, 0xbe0b65aebda9d1a6U,
  0xbdc8030c00000000U, 0xbd80f724be6b099eU, 0xbe208f4bbda31084U, 0x3d8f05f0bddc4dbeU,
  0x3d5a68a8be9d4909U, 0xbd46d3983ea0f91fU, 0x3c9ed2a43e9d936eU, 0x3f3b8fd8bdf81bc4U,
  0x3f59ff3abd96bdd8U, 0x3f1f16fd3ebbeadcU, 0x3f982cfabe86c816U, 0xbe32e2e93e5a95b6U,
  0xbe4cf3003e6f0b1eU, 0xbe12fbb43e1a04caU, 0xbe7e85123e85ae8dU, 0xbd277e983e45896aU,
  0x3dd69d9e3d70c78bU, 0x3d79c6e03e3f8432U, 0x3de06123bcf87030U, 0xbe8fbfd8bd649cb6U,
  0xbd458f8fbe0e078dU, 0xbd07d5063ed5a47cU, 0x3f60723d3e469e5eU, 0x3f6cc327be4c0248U,
  0x3f14db1b3eec75e1U, 0x3fa4c74b3e6719ceU, 0x3d5183e8bc3bf4e0U, 0xbdb4c51cbd90a0dcU,
  0xbe95a6ee3c871ab0U, 0xbe8076443e9c0a29U, 0x3e9edaa9be10814bU, 0xbdb0c9433ecc8bceU,
  0x3f5fa9c73d4ea0f8U, 0x3ed6e745be490da3U, 0x3f24ad933f023864U, 0x3f48010bbdaf5ec2U,
  0xbe3a096ebf9575e2U, 0xbd87a7ea3e0d317aU, 0x3e2e5526be8dc0f2U, 0xbe3d1d323e3ba3ebU,
  0xbda2e6353e1a009aU, 0xbe11907f3fa19adbU, 0xbdfa75f2be350ff7U, 0xbd521f383f2fa7e0U,
  0x3f13aa1dbe2d8b35U, 0x3ef34fbebe4cc863U, 0xbdb39265U,
};


ai_handle g_network_weights_table[1 + 2] = {
  AI_HANDLE_PTR(AI_MAGIC_MARKER),
  AI_HANDLE_PTR(s_network_weights_array_u64),
  AI_HANDLE_PTR(AI_MAGIC_MARKER),
};

