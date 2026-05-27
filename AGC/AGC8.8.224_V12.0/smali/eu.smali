.class public final Leu;
.super Ljava/lang/Object;


# direct methods
.method private static A(Lbff;Lbfi;Lorg/w3c/dom/Node;Z)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Leu;->x(Lbff;Lbfi;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lbfi;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/16 v1, 0xca

    if-ge p3, v0, :cond_4

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xmlns"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "xml:lang"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v5, v0}, Leu;->C(Lbfi;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "datatype"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lbeq;

    const-string p1, "Invalid attribute for literal property element"

    invoke-direct {p0, p1, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    const-string p3, ""

    :goto_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_6

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    new-instance p0, Lbeq;

    const-string p1, "Invalid child of literal property element"

    invoke-direct {p0, p1, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    iput-object p3, p0, Lbfi;->b:Ljava/lang/String;

    return-void
.end method

.method private static B(Lbff;Lbfi;Lorg/w3c/dom/Node;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v4, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_32

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5}, Leu;->v(Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_10

    :cond_0
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_31

    invoke-static {v5}, Leu;->w(Lorg/w3c/dom/Node;)I

    move-result v6

    const/16 v9, 0x8

    if-eq v6, v9, :cond_30

    const/16 v9, 0xa

    if-ge v6, v9, :cond_30

    if-lez v6, :cond_1

    const/4 v9, 0x7

    if-le v6, v9, :cond_30

    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    const-string v12, "xmlns"

    if-ge v10, v11, :cond_5

    invoke-interface {v6, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_4

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_2
    if-nez v9, :cond_3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_6

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v6, v13}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_7

    invoke-static {v0, v1, v5, v2}, Leu;->z(Lbff;Lbfi;Lorg/w3c/dom/Node;Z)V

    const/4 v3, 0x0

    goto/16 :goto_10

    :cond_7
    const/4 v9, 0x0

    :goto_3
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    const-string v13, ""

    const-string v14, "ID"

    const-string v10, "xml:lang"

    const-string v15, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    if-ge v9, v11, :cond_16

    invoke-interface {v6, v9}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x3

    goto :goto_3

    :cond_9
    :goto_4
    const-string v6, "datatype"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v0, v1, v5, v2}, Leu;->A(Lbff;Lbfi;Lorg/w3c/dom/Node;Z)V

    const/4 v3, 0x0

    goto/16 :goto_10

    :cond_a
    const-string v6, "parseType"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_7

    :cond_b
    const-string v3, "Literal"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "Resource"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {v0, v1, v5, v13, v2}, Leu;->x(Lbff;Lbfi;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lbfi;

    move-result-object v3

    invoke-virtual {v3}, Lbfi;->g()Lbfs;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lbfs;->x(Z)V

    const/4 v7, 0x0

    :goto_5
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_10

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    invoke-interface {v8, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_c

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_6

    :cond_c
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v10, v8}, Leu;->C(Lbfi;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_6

    :cond_e
    new-instance v0, Lbeq;

    const-string v1, "Invalid attribute for ParseTypeResource property element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_f
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_10
    const/4 v6, 0x0

    invoke-static {v0, v3, v5, v6}, Leu;->B(Lbff;Lbfi;Lorg/w3c/dom/Node;Z)V

    iget-boolean v5, v3, Lbfi;->i:Z

    if-eqz v5, :cond_11

    invoke-static {v3}, Leu;->y(Lbfi;)V

    const/4 v3, 0x0

    goto/16 :goto_10

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_10

    :cond_12
    const-string v0, "Collection"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lbeq;

    const-string v1, "ParseTypeCollection property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_13
    const/16 v2, 0xcb

    new-instance v0, Lbeq;

    const-string v1, "ParseTypeOther property element not allowed"

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_14
    const/16 v2, 0xcb

    new-instance v0, Lbeq;

    const-string v1, "ParseTypeLiteral property element not allowed"

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_15
    :goto_7
    invoke-static {v0, v1, v5, v2}, Leu;->z(Lbff;Lbfi;Lorg/w3c/dom/Node;Z)V

    const/4 v3, 0x0

    goto/16 :goto_10

    :cond_16
    invoke-interface {v5}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v6, 0x0

    :goto_8
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_2e

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v7, 0x3

    if-eq v3, v7, :cond_2d

    if-eqz v2, :cond_18

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "iX:changes"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_9

    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_10

    :cond_18
    :goto_9
    invoke-static {v0, v1, v5, v13, v2}, Leu;->x(Lbff;Lbfi;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lbfi;

    move-result-object v3

    const/4 v6, 0x0

    :goto_a
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_1d

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_19

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    goto :goto_b

    :cond_19
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v10, v7}, Leu;->C(Lbfi;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    goto :goto_b

    :cond_1b
    new-instance v0, Lbeq;

    const-string v1, "Invalid attribute for resource property element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1c
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_1d
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_c
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_2b

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-static {v7}, Leu;->v(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-nez v9, :cond_2a

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_27

    if-nez v8, :cond_28

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_1e

    const-string v10, "Bag"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-virtual {v3}, Lbfi;->g()Lbfs;

    move-result-object v8

    invoke-virtual {v8}, Lbfs;->q()V

    const/16 v9, 0xcb

    const/4 v11, 0x1

    goto/16 :goto_d

    :cond_1e
    if-eqz v8, :cond_1f

    const-string v10, "Seq"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-virtual {v3}, Lbfi;->g()Lbfs;

    move-result-object v8

    invoke-virtual {v8}, Lbfs;->q()V

    invoke-virtual {v8}, Lbfs;->t()V

    const/16 v9, 0xcb

    const/4 v11, 0x1

    goto :goto_d

    :cond_1f
    if-eqz v8, :cond_20

    const-string v10, "Alt"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-virtual {v3}, Lbfi;->g()Lbfs;

    move-result-object v8

    invoke-virtual {v8}, Lbfs;->q()V

    invoke-virtual {v8}, Lbfs;->t()V

    invoke-virtual {v8}, Lbfs;->s()V

    const/16 v9, 0xcb

    const/4 v11, 0x1

    goto :goto_d

    :cond_20
    invoke-virtual {v3}, Lbfi;->g()Lbfs;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lbfs;->x(Z)V

    if-nez v8, :cond_23

    const-string v8, "Description"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_21

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "rdf:type"

    invoke-static {v3, v9, v8}, Leu;->C(Lbfi;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xcb

    goto :goto_d

    :cond_21
    new-instance v0, Lbeq;

    const-string v1, "All XML elements must be in a namespace"

    const/16 v9, 0xcb

    invoke-direct {v0, v1, v9}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_22
    const/16 v9, 0xcb

    goto :goto_d

    :cond_23
    const/16 v9, 0xcb

    :goto_d
    const/4 v10, 0x0

    invoke-static {v0, v3, v7, v10}, Leu;->u(Lbff;Lbfi;Lorg/w3c/dom/Node;Z)V

    iget-boolean v7, v3, Lbfi;->i:Z

    if-eqz v7, :cond_24

    invoke-static {v3}, Leu;->y(Lbfi;)V

    const/4 v8, 0x1

    goto :goto_f

    :cond_24
    invoke-virtual {v3}, Lbfi;->g()Lbfs;

    move-result-object v7

    invoke-virtual {v7}, Lbfs;->j()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v3}, Lbfi;->g()Lbfs;

    move-result-object v7

    invoke-virtual {v7}, Lbfs;->j()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v3}, Lbfi;->s()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v3}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v7

    :cond_25
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbfi;

    invoke-virtual {v8}, Lbfi;->g()Lbfs;

    move-result-object v8

    invoke-virtual {v8}, Lbfs;->c()Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-virtual {v3}, Lbfi;->g()Lbfs;

    move-result-object v7

    invoke-virtual {v7}, Lbfs;->r()V

    invoke-static {v3}, Leu;->t(Lbfi;)V

    goto :goto_e

    :cond_26
    :goto_e
    const/4 v8, 0x1

    goto :goto_f

    :cond_27
    if-eqz v8, :cond_29

    :cond_28
    new-instance v0, Lbeq;

    const-string v1, "Invalid child of resource property element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_29
    const/16 v2, 0xca

    new-instance v0, Lbeq;

    const-string v1, "Children of resource property element must be XML elements"

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2a
    const/16 v9, 0xcb

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c

    :cond_2b
    const/4 v10, 0x0

    if-eqz v8, :cond_2c

    const/4 v3, 0x0

    goto :goto_10

    :cond_2c
    new-instance v0, Lbeq;

    const-string v1, "Missing child of resource property element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2d
    const/4 v3, 0x0

    const/16 v9, 0xcb

    const/4 v11, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    :cond_2e
    const/4 v3, 0x0

    invoke-static {v0, v1, v5, v2}, Leu;->A(Lbff;Lbfi;Lorg/w3c/dom/Node;Z)V

    goto :goto_10

    :cond_2f
    const/4 v3, 0x0

    invoke-static {v0, v1, v5, v2}, Leu;->z(Lbff;Lbfi;Lorg/w3c/dom/Node;Z)V

    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_30
    new-instance v0, Lbeq;

    const-string v1, "Invalid property element name"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_31
    const/16 v2, 0xca

    new-instance v0, Lbeq;

    const-string v1, "Expected property element node not found"

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_32
    return-void
.end method

.method private static C(Lbfi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "xml:lang"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Lbfi;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lbey;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    invoke-direct {v1, p1, p2, v0}, Lbfi;-><init>(Ljava/lang/String;Ljava/lang/String;Lbfs;)V

    invoke-virtual {p0, v1}, Lbfi;->m(Lbfi;)V

    return-void
.end method

.method static a(Ljava/lang/Object;Lfd;)Landroid/window/OnBackInvokedCallback;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lnl;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lnl;-><init>(Lfd;I)V

    check-cast p0, Landroid/window/OnBackInvokedDispatcher;

    const p1, 0xf4240

    invoke-interface {p0, p1, v0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-object v0
.end method

.method static b(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/window/OnBackInvokedCallback;

    check-cast p0, Landroid/window/OnBackInvokedDispatcher;

    invoke-interface {p0, p1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public static d(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_1
    invoke-static {p0, p0}, Leu;->f(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_2

    neg-int p1, v0

    neg-int v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    return-void
.end method

.method public static e(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static f(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static g(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static h(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static i(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static j(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v1, p2

    mul-float v0, v0, v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    float-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->inset(II)V

    return-void
.end method

.method public static k(Landroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Lbfi;Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lbfi;->a()I

    move-result v2

    if-gt v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lbfi;->e(I)Lbfi;

    move-result-object v2

    invoke-virtual {v2}, Lbfi;->t()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Lbfi;->f(I)Lbfi;

    move-result-object v3

    iget-object v3, v3, Lbfi;->a:Ljava/lang/String;

    const-string v4, "xml:lang"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v0}, Lbfi;->f(I)Lbfi;

    move-result-object v2

    iget-object v2, v2, Lbfi;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0

    :cond_3
    new-instance p0, Lbeq;

    const-string p1, "Language item must be used on array"

    const/16 v0, 0x66

    invoke-direct {p0, p1, v0}, Lbeq;-><init>(Ljava/lang/String;I)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static m(Lbfi;Ljava/lang/String;Z)Lbfi;
    .locals 3

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->o()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lbfi;->f:Z

    const/16 v2, 0x66

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->d()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbfs;->x(Z)V

    goto :goto_0

    :cond_0
    new-instance p0, Lbeq;

    const-string p1, "Named children not allowed for arrays"

    invoke-direct {p0, p1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    new-instance p0, Lbeq;

    const-string p1, "Named children only allowed for schemas and structs"

    invoke-direct {p0, p1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lbfi;->c(Ljava/lang/String;)Lbfi;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    new-instance p2, Lbfs;

    invoke-direct {p2}, Lbfs;-><init>()V

    new-instance v0, Lbfi;

    invoke-direct {v0, p1, p2}, Lbfi;-><init>(Ljava/lang/String;Lbfs;)V

    iput-boolean v1, v0, Lbfi;->f:Z

    invoke-virtual {p0, v0}, Lbfi;->k(Lbfi;)V

    :cond_3
    return-object v0
.end method

.method public static n(Lbfi;Lbfm;ZLbfs;)Lbfi;
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "xml:lang"

    invoke-virtual/range {p1 .. p1}, Lbfm;->a()I

    move-result v3

    const/16 v4, 0x66

    if-eqz v3, :cond_21

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lbfm;->b(I)Lbfn;

    move-result-object v5

    iget-object v5, v5, Lbfn;->a:Ljava/lang/String;

    move-object/from16 v6, p0

    invoke-static {v6, v5, v1}, Leu;->o(Lbfi;Ljava/lang/String;Z)Lbfi;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return-object v6

    :cond_0
    iget-boolean v7, v5, Lbfi;->f:Z

    if-eqz v7, :cond_1

    iput-boolean v3, v5, Lbfi;->f:Z

    move-object v7, v5

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_0
    const/4 v8, 0x1

    const/4 v9, 0x1

    :goto_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lbfm;->a()I

    move-result v10

    if-ge v9, v10, :cond_1e

    invoke-virtual {v0, v9}, Lbfm;->b(I)Lbfn;

    move-result-object v10

    iget v11, v10, Lbfn;->b:I

    const/4 v12, -0x1

    if-ne v11, v8, :cond_2

    iget-object v10, v10, Lbfn;->a:Ljava/lang/String;

    invoke-static {v5, v10, v1}, Leu;->m(Lbfi;Ljava/lang/String;Z)Lbfi;

    move-result-object v5

    goto/16 :goto_8

    :cond_2
    const/4 v13, 0x2

    if-ne v11, v13, :cond_4

    iget-object v10, v10, Lbfn;->a:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lbfi;->d(Ljava/lang/String;)Lbfi;

    move-result-object v11

    if-nez v11, :cond_3

    if-eqz v1, :cond_3

    new-instance v11, Lbfi;

    invoke-direct {v11, v10, v6}, Lbfi;-><init>(Ljava/lang/String;Lbfs;)V

    iput-boolean v8, v11, Lbfi;->f:Z

    invoke-virtual {v5, v11}, Lbfi;->m(Lbfi;)V

    move-object v5, v11

    goto/16 :goto_8

    :cond_3
    move-object v5, v11

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v5}, Lbfi;->g()Lbfs;

    move-result-object v13

    invoke-virtual {v13}, Lbfs;->d()Z

    move-result v13
    :try_end_0
    .catch Lbeq; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v13, :cond_1d

    const/4 v13, 0x3

    const-string v14, "[]"

    if-ne v11, v13, :cond_6

    :try_start_1
    iget-object v10, v10, Lbfn;->a:Ljava/lang/String;
    :try_end_1
    .catch Lbeq; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v12

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lbeq; {:try_start_2 .. :try_end_2} :catch_1

    if-lez v10, :cond_5

    if-eqz v1, :cond_13

    :try_start_3
    invoke-virtual {v5}, Lbfi;->a()I

    move-result v11

    add-int/2addr v11, v8

    if-ne v10, v11, :cond_13

    new-instance v11, Lbfi;

    invoke-direct {v11, v14, v6}, Lbfi;-><init>(Ljava/lang/String;Lbfs;)V

    iput-boolean v8, v11, Lbfi;->f:Z

    invoke-virtual {v5, v11}, Lbfi;->k(Lbfi;)V
    :try_end_3
    .catch Lbeq; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_7

    :cond_5
    :try_start_4
    new-instance v0, Lbeq;

    const-string v1, "Array index must be larger than zero"

    invoke-direct {v0, v1, v4}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lbeq; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v0, Lbeq;

    const-string v1, "Array index not digits."

    invoke-direct {v0, v1, v4}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_6
    const/4 v13, 0x4

    if-ne v11, v13, :cond_7

    invoke-virtual {v5}, Lbfi;->a()I

    move-result v10

    goto/16 :goto_7

    :cond_7
    const/4 v13, 0x6

    if-ne v11, v13, :cond_d

    iget-object v10, v10, Lbfn;->a:Ljava/lang/String;

    invoke-static {v10}, Lbey;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v11, v10, v3

    aget-object v10, v10, v8

    const/4 v13, -0x1

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v5}, Lbfi;->a()I

    move-result v15

    if-gt v14, v15, :cond_c

    if-gez v13, :cond_c

    invoke-virtual {v5, v14}, Lbfi;->e(I)Lbfi;

    move-result-object v15

    invoke-virtual {v15}, Lbfi;->g()Lbfs;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lbfs;->o()Z

    move-result v16

    if-eqz v16, :cond_b

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v15}, Lbfi;->a()I

    move-result v6

    if-gt v12, v6, :cond_a

    invoke-virtual {v15, v12}, Lbfi;->e(I)Lbfi;

    move-result-object v6

    iget-object v8, v6, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_4

    :cond_8
    iget-object v6, v6, Lbfi;->b:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v13, v14

    goto :goto_5

    :cond_9
    :goto_4
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v12, -0x1

    goto :goto_2

    :cond_b
    new-instance v0, Lbeq;

    const-string v1, "Field selector must be used on array of struct"

    invoke-direct {v0, v1, v4}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_c
    move v10, v13

    goto/16 :goto_7

    :cond_d
    const/4 v6, 0x5

    if-ne v11, v6, :cond_1c

    iget-object v6, v10, Lbfn;->a:Ljava/lang/String;

    invoke-static {v6}, Lbey;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v8, v6, v3

    const/4 v11, 0x1

    aget-object v6, v6, v11

    iget v10, v10, Lbfn;->d:I

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-static {v6}, Lbey;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Leu;->l(Lbfi;Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_e

    and-int/lit16 v8, v10, 0x1000

    if-lez v8, :cond_e

    new-instance v6, Lbfi;

    const/4 v8, 0x0

    invoke-direct {v6, v14, v8}, Lbfi;-><init>(Ljava/lang/String;Lbfs;)V

    new-instance v10, Lbfi;

    const-string v11, "x-default"

    invoke-direct {v10, v2, v11, v8}, Lbfi;-><init>(Ljava/lang/String;Ljava/lang/String;Lbfs;)V

    invoke-virtual {v6, v10}, Lbfi;->m(Lbfi;)V

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v6}, Lbfi;->l(ILbfi;)V

    const/4 v10, 0x1

    goto :goto_7

    :cond_e
    move v10, v6

    goto :goto_7

    :cond_f
    const/4 v10, 0x1

    :goto_6
    invoke-virtual {v5}, Lbfi;->a()I

    move-result v11

    if-ge v10, v11, :cond_12

    invoke-virtual {v5, v10}, Lbfi;->e(I)Lbfi;

    move-result-object v11

    invoke-virtual {v11}, Lbfi;->i()Ljava/util/Iterator;

    move-result-object v11

    :cond_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lbfi;

    iget-object v13, v12, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    iget-object v12, v12, Lbfi;->b:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_7

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_12
    const/4 v10, -0x1

    :cond_13
    :goto_7
    if-lez v10, :cond_14

    invoke-virtual {v5}, Lbfi;->a()I

    move-result v6

    if-gt v10, v6, :cond_14

    invoke-virtual {v5, v10}, Lbfi;->e(I)Lbfi;

    move-result-object v5

    goto :goto_8

    :cond_14
    const/4 v5, 0x0

    :goto_8
    if-nez v5, :cond_16

    if-eqz v1, :cond_15

    invoke-static {v7}, Leu;->s(Lbfi;)V

    :cond_15
    const/4 v6, 0x0

    return-object v6

    :cond_16
    const/4 v6, 0x0

    iget-boolean v8, v5, Lbfi;->f:Z

    if-eqz v8, :cond_1b

    iput-boolean v3, v5, Lbfi;->f:Z

    const/4 v8, 0x1

    if-ne v9, v8, :cond_19

    invoke-virtual {v0, v8}, Lbfm;->b(I)Lbfn;

    move-result-object v9

    iget-boolean v9, v9, Lbfn;->c:Z

    if-eqz v9, :cond_18

    invoke-virtual {v0, v8}, Lbfm;->b(I)Lbfn;

    move-result-object v9

    iget v9, v9, Lbfn;->d:I

    if-eqz v9, :cond_17

    invoke-virtual {v5}, Lbfi;->g()Lbfs;

    move-result-object v9

    invoke-virtual {v0, v8}, Lbfm;->b(I)Lbfn;

    move-result-object v10

    iget v10, v10, Lbfn;->d:I

    invoke-virtual {v9, v10, v8}, Lbfq;->f(IZ)V

    const/4 v9, 0x1

    goto :goto_a

    :cond_17
    const/4 v9, 0x1

    goto :goto_9

    :cond_18
    const/4 v9, 0x1

    :cond_19
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lbfm;->a()I

    move-result v8

    const/4 v10, -0x1

    add-int/2addr v8, v10

    if-ge v9, v8, :cond_1a

    invoke-virtual {v0, v9}, Lbfm;->b(I)Lbfn;

    move-result-object v8

    iget v8, v8, Lbfn;->b:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1a

    invoke-virtual {v5}, Lbfi;->g()Lbfs;

    move-result-object v8

    invoke-virtual {v8}, Lbfs;->l()Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-virtual {v5}, Lbfi;->g()Lbfs;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lbfs;->x(Z)V

    :cond_1a
    :goto_a
    if-nez v7, :cond_1b

    move-object v7, v5

    :cond_1b
    const/4 v8, 0x1

    add-int/2addr v9, v8

    goto/16 :goto_1

    :cond_1c
    new-instance v0, Lbeq;

    const-string v1, "Unknown array indexing step in FollowXPathStep"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1d
    new-instance v0, Lbeq;

    const-string v1, "Indexing applied to non-array"

    invoke-direct {v0, v1, v4}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_5
    .catch Lbeq; {:try_start_5 .. :try_end_5} :catch_1

    :cond_1e
    if-eqz v7, :cond_1f

    invoke-virtual {v5}, Lbfi;->g()Lbfs;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lbfs;->b(Lbfs;)V

    invoke-virtual {v5}, Lbfi;->g()Lbfs;

    move-result-object v0

    iput-object v0, v5, Lbfi;->e:Lbfs;

    :cond_1f
    return-object v5

    :catch_1
    move-exception v0

    if-eqz v7, :cond_20

    invoke-static {v7}, Leu;->s(Lbfi;)V

    :cond_20
    throw v0

    :cond_21
    new-instance v0, Lbeq;

    const-string v1, "Empty XMPPath"

    invoke-direct {v0, v1, v4}, Lbeq;-><init>(Ljava/lang/String;I)V

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method public static o(Lbfi;Ljava/lang/String;Z)Lbfi;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Leu;->p(Lbfi;Ljava/lang/String;Ljava/lang/String;Z)Lbfi;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lbfi;Ljava/lang/String;Ljava/lang/String;Z)Lbfi;
    .locals 3

    invoke-virtual {p0, p1}, Lbfi;->c(Ljava/lang/String;)Lbfi;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    new-instance v0, Lbfi;

    new-instance p3, Lbfs;

    invoke-direct {p3}, Lbfs;-><init>()V

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Lbfq;->f(IZ)V

    invoke-direct {v0, p1, p3}, Lbfi;-><init>(Ljava/lang/String;Lbfs;)V

    iput-boolean v2, v0, Lbfi;->f:Z

    sget-object p3, Lbet;->a:Lcvm;

    invoke-virtual {p3, p1}, Lcvm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lbet;->a:Lcvm;

    invoke-virtual {p3, p1, p2}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance p0, Lbeq;

    const-string p1, "Unregistered schema namespace URI"

    const/16 p2, 0x65

    invoke-direct {p0, p1, p2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    iput-object p3, v0, Lbfi;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbfi;->k(Lbfi;)V

    goto :goto_1

    :cond_2
    goto :goto_1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static q(Lbfs;Ljava/lang/Object;)Lbfs;
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Lbfs;

    invoke-direct {p0}, Lbfs;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lbfs;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbfs;->s()V

    :cond_1
    invoke-virtual {p0}, Lbfs;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbfs;->t()V

    :cond_2
    invoke-virtual {p0}, Lbfs;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbfs;->q()V

    :cond_3
    invoke-virtual {p0}, Lbfs;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Lbeq;

    const-string p1, "Structs and arrays can\'t have values"

    const/16 v0, 0x67

    invoke-direct {p0, p1, v0}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    :goto_0
    iget p1, p0, Lbfq;->a:I

    invoke-virtual {p0, p1}, Lbfs;->e(I)V

    return-object p0
.end method

.method public static r(Lbfi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lbfi;

    const-string v1, "[]"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lbfi;-><init>(Ljava/lang/String;Ljava/lang/String;Lbfs;)V

    new-instance p2, Lbfi;

    const-string v1, "xml:lang"

    invoke-direct {p2, v1, p1, v2}, Lbfi;-><init>(Ljava/lang/String;Ljava/lang/String;Lbfs;)V

    invoke-virtual {v0, p2}, Lbfi;->m(Lbfi;)V

    iget-object p1, p2, Lbfi;->b:Ljava/lang/String;

    const-string p2, "x-default"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lbfi;->k(Lbfi;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lbfi;->l(ILbfi;)V

    return-void
.end method

.method public static s(Lbfi;)V
    .locals 2

    iget-object v0, p0, Lbfi;->c:Lbfi;

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v1

    invoke-virtual {v1}, Lbfs;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lbfi;->q(Lbfi;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lbfi;->o(Lbfi;)V

    :goto_0
    invoke-virtual {v0}, Lbfi;->s()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lbfi;->g()Lbfs;

    move-result-object p0

    invoke-virtual {p0}, Lbfs;->n()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lbfi;->c:Lbfi;

    invoke-virtual {p0, v0}, Lbfi;->o(Lbfi;)V

    :cond_1
    return-void
.end method

.method public static t(Lbfi;)V
    .locals 6

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0}, Lbfi;->a()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lbfi;->e(I)Lbfi;

    move-result-object v2

    invoke-virtual {v2}, Lbfi;->t()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lbfi;->f(I)Lbfi;

    move-result-object v4

    iget-object v4, v4, Lbfi;->b:Ljava/lang/String;

    const-string v5, "x-default"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lbfi;->j()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lbfi;->n()V

    invoke-virtual {p0, v3, v2}, Lbfi;->l(ILbfi;)V
    :try_end_0
    .catch Lbeq; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    if-ne v1, v0, :cond_1

    invoke-virtual {p0, v0}, Lbfi;->e(I)Lbfi;

    move-result-object p0

    iget-object v0, v2, Lbfi;->b:Ljava/lang/String;

    iput-object v0, p0, Lbfi;->b:Ljava/lang/String;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static u(Lbff;Lbfi;Lorg/w3c/dom/Node;Z)V
    .locals 7

    invoke-static {p2}, Leu;->w(Lorg/w3c/dom/Node;)I

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0xca

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lbeq;

    const-string p1, "Node element must be rdf:Description or typed node"

    invoke-direct {p0, p1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    const/16 v1, 0xcb

    if-eqz p3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lbeq;

    const-string p1, "Top level typed node not allowed"

    invoke-direct {p0, p1, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_a

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xmlns"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_4
    invoke-static {v4}, Leu;->w(Lorg/w3c/dom/Node;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lbeq;

    const-string p1, "Invalid nodeElement attribute"

    invoke-direct {p0, p1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :pswitch_1
    if-gtz v3, :cond_8

    const/4 v3, 0x1

    if-eqz p3, :cond_7

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    iget-object v5, p1, Lbfi;->a:Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Lbeq;

    const-string p1, "Mismatched top level rdf:about values"

    invoke-direct {p0, p1, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lbfi;->a:Ljava/lang/String;

    goto :goto_3

    :cond_7
    goto :goto_3

    :cond_8
    new-instance p0, Lbeq;

    const-string p1, "Mutally exclusive about, ID, nodeID attributes"

    invoke-direct {p0, p1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :pswitch_2
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, v4, v5, p3}, Leu;->x(Lbff;Lbfi;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lbfi;

    :cond_9
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    invoke-static {p0, p1, p2, p3}, Leu;->B(Lbff;Lbfi;Lorg/w3c/dom/Node;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static v(Lorg/w3c/dom/Node;)Z
    .locals 3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static w(Lorg/w3c/dom/Node;)I
    .locals 6

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ID"

    const-string v3, "about"

    const-string v4, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    if-nez v1, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    instance-of v5, p0, Lorg/w3c/dom/Attr;

    if-eqz v5, :cond_1

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v1, v4

    goto :goto_0

    :cond_1
    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "li"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x9

    return p0

    :cond_2
    const-string p0, "parseType"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-string p0, "Description"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x8

    return p0

    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_5
    const-string p0, "resource"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x5

    return p0

    :cond_6
    const-string p0, "RDF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    return p0

    :cond_8
    const-string p0, "nodeID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x6

    return p0

    :cond_9
    const-string p0, "datatype"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x7

    return p0

    :cond_a
    const-string p0, "aboutEach"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0xa

    return p0

    :cond_b
    const-string p0, "aboutEachPrefix"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0xb

    return p0

    :cond_c
    const-string p0, "bagID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, 0xc

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private static x(Lbff;Lbfi;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lbfi;
    .locals 7

    sget-object v0, Lbet;->a:Lcvm;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xca

    if-eqz v1, :cond_8

    const-string v3, "http://purl.org/dc/1.1/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_0

    const-string v1, "http://purl.org/dc/elements/1.1/"

    :cond_0
    invoke-virtual {v0, v1}, Lcvm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "_dflt"

    if-nez v3, :cond_2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    invoke-virtual {v0, v1, v3}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v6, Lbfs;

    invoke-direct {v6}, Lbfs;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    if-eqz p4, :cond_3

    iget-object p1, p0, Lbff;->a:Lbfi;

    invoke-static {p1, v1, v5, v4}, Leu;->p(Lbfi;Ljava/lang/String;Ljava/lang/String;Z)Lbfi;

    move-result-object p1

    iput-boolean v3, p1, Lbfi;->f:Z

    invoke-virtual {v0, p2}, Lcvm;->g(Ljava/lang/String;)Lbfk;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lbff;->a:Lbfi;

    iput-boolean v4, p0, Lbfi;->g:Z

    iput-boolean v4, p1, Lbfi;->g:Z

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    :goto_1
    const-string p0, "rdf:li"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "rdf:value"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Lbfi;

    invoke-direct {v1, p2, p3, v6}, Lbfi;-><init>(Ljava/lang/String;Ljava/lang/String;Lbfs;)V

    iput-boolean v3, v1, Lbfi;->h:Z

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Lbfi;->k(Lbfi;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v4, v1}, Lbfi;->l(ILbfi;)V

    if-nez p4, :cond_7

    invoke-virtual {p1}, Lbfi;->g()Lbfs;

    move-result-object p2

    invoke-virtual {p2}, Lbfs;->o()Z

    move-result p2

    if-eqz p2, :cond_7

    iput-boolean v4, p1, Lbfi;->i:Z

    :goto_2
    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lbfi;->g()Lbfs;

    move-result-object p0

    invoke-virtual {p0}, Lbfs;->d()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "[]"

    iput-object p0, v1, Lbfi;->a:Ljava/lang/String;

    goto :goto_3

    :cond_5
    new-instance p0, Lbeq;

    const-string p1, "Misplaced rdf:li element"

    invoke-direct {p0, p1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    :goto_3
    return-object v1

    :cond_7
    new-instance p0, Lbeq;

    const-string p1, "Misplaced rdf:value element"

    invoke-direct {p0, p1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_8
    new-instance p0, Lbeq;

    const-string p1, "XML namespace required for all elements and attributes"

    invoke-direct {p0, p1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static y(Lbfi;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbfi;->e(I)Lbfi;

    move-result-object v1

    invoke-virtual {v1}, Lbfi;->g()Lbfs;

    move-result-object v2

    invoke-virtual {v2}, Lbfs;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v2

    invoke-virtual {v2}, Lbfs;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lbfi;->f(I)Lbfi;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbfi;->q(Lbfi;)V

    invoke-virtual {p0, v2}, Lbfi;->m(Lbfi;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lbeq;

    const-string v0, "Redundant xml:lang for rdf:value element"

    const/16 v1, 0xcb

    invoke-direct {p0, v0, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lbfi;->b()I

    move-result v2

    if-gt v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lbfi;->f(I)Lbfi;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbfi;->m(Lbfi;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p0}, Lbfi;->a()I

    move-result v2

    if-gt v0, v2, :cond_3

    invoke-virtual {p0, v0}, Lbfi;->e(I)Lbfi;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbfi;->m(Lbfi;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbfi;->i:Z

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbfs;->x(Z)V

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v1}, Lbfi;->g()Lbfs;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbfs;->b(Lbfs;)V

    iget-object v0, v1, Lbfi;->b:Ljava/lang/String;

    iput-object v0, p0, Lbfi;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lbfi;->p()V

    invoke-virtual {v1}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfi;

    invoke-virtual {p0, v1}, Lbfi;->k(Lbfi;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static z(Lbff;Lbfi;Lorg/w3c/dom/Node;Z)V
    .locals 16

    move-object/from16 v0, p0

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    const/16 v2, 0xca

    if-nez v1, :cond_13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    const-string v10, "Unrecognized attribute of empty property element"

    const-string v11, "xml:lang"

    const-string v12, "xmlns"

    const/4 v13, 0x1

    if-ge v4, v9, :cond_7

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    invoke-interface {v9, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_0

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v9}, Leu;->w(Lorg/w3c/dom/Node;)I

    move-result v12

    const/16 v14, 0xcb

    const-string v15, "Empty property element can\'t have both rdf:value and rdf:resource"

    const-string v1, "Empty property element can\'t have both rdf:resource and rdf:nodeID"

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lbeq;

    invoke-direct {v0, v10, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    if-nez v6, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lbeq;

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_2
    if-nez v8, :cond_3

    if-nez v5, :cond_2

    move-object v3, v9

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lbeq;

    invoke-direct {v0, v15, v14}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    new-instance v0, Lbeq;

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_3
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "value"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v10, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v6, :cond_4

    move-object v3, v9

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lbeq;

    invoke-direct {v0, v15, v14}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v7, 0x1

    :cond_6
    :goto_1
    :pswitch_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    const-string v1, ""

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-static {v0, v4, v8, v1, v9}, Leu;->x(Lbff;Lbfi;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lbfi;

    move-result-object v4

    if-nez v5, :cond_a

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v4}, Lbfi;->g()Lbfs;

    move-result-object v1

    invoke-virtual {v1, v13}, Lbfs;->x(Z)V

    goto :goto_4

    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    :cond_a
    :goto_2
    if-eqz v3, :cond_b

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_b
    :goto_3
    iput-object v1, v4, Lbfi;->b:Ljava/lang/String;

    if-nez v5, :cond_c

    invoke-virtual {v4}, Lbfi;->g()Lbfs;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v13}, Lbfq;->f(IZ)V

    const/4 v13, 0x0

    goto :goto_4

    :cond_c
    const/4 v13, 0x0

    :goto_4
    const/4 v1, 0x0

    :goto_5
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_12

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eq v5, v3, :cond_11

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v7, 0x0

    goto :goto_6

    :cond_d
    invoke-static {v5}, Leu;->w(Lorg/w3c/dom/Node;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :pswitch_5
    new-instance v0, Lbeq;

    invoke-direct {v0, v10, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_6
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rdf:resource"

    invoke-static {v4, v6, v5}, Leu;->C(Lbfi;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_6

    :pswitch_7
    const/4 v7, 0x0

    goto :goto_6

    :pswitch_8
    if-nez v13, :cond_e

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v5}, Leu;->C(Lbfi;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_6

    :cond_e
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v11, v5}, Leu;->C(Lbfi;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_6

    :cond_f
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v0, v4, v5, v6, v7}, Leu;->x(Lbff;Lbfi;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lbfi;

    goto :goto_6

    :cond_10
    const/4 v7, 0x0

    goto :goto_6

    :cond_11
    const/4 v7, 0x0

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    return-void

    :cond_13
    new-instance v0, Lbeq;

    const-string v1, "Nested content not allowed with rdf:resource or property attributes"

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
