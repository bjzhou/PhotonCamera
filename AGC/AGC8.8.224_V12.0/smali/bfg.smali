.class public final Lbfg;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbfg;->a:Ljava/lang/Object;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    :try_start_0
    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v0, v2, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    sput-object v0, Lbfg;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lber;
    .locals 16

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Let;->i(Ljava/lang/Object;)V

    new-instance v1, Lbfr;

    invoke-direct {v1}, Lbfr;-><init>()V

    instance-of v2, v0, Ljava/io/InputStream;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v1}, Lbfr;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lbfr;->c()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lbfg;->b(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Lbev;

    invoke-direct {v2, v0}, Lbev;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v1}, Lbfg;->c(Lbev;Lbfr;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lbeq;

    const-string v2, "Error reading the XML-file"

    const/16 v3, 0xcc

    invoke-direct {v1, v2, v3, v0}, Lbeq;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    :cond_1
    instance-of v2, v0, [B

    if-eqz v2, :cond_2

    new-instance v2, Lbev;

    check-cast v0, [B

    invoke-direct {v2, v0}, Lbev;-><init>([B)V

    invoke-static {v2, v1}, Lbfg;->c(Lbev;Lbfr;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    :try_start_1
    invoke-static {v0}, Lbfg;->b(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_1
    .catch Lbeq; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    iget v0, v3, Lbeq;->a:I

    const/16 v4, 0xc9

    if-ne v0, v4, :cond_35

    invoke-virtual {v1}, Lbfr;->c()Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v3, Lbex;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lbex;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Lbfg;->b(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbfq;->h(I)Z

    move-result v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lbfg;->d(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    aget-object v3, v0, v2

    sget-object v4, Lbfg;->a:Ljava/lang/Object;

    if-ne v3, v4, :cond_34

    const/4 v3, 0x0

    aget-object v4, v0, v3

    check-cast v4, Lorg/w3c/dom/Node;

    new-instance v5, Lbff;

    invoke-direct {v5}, Lbff;-><init>()V

    invoke-interface {v4}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v6

    if-eqz v6, :cond_33

    iget-object v6, v5, Lbff;->a:Lbfi;

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-static {v8}, Leu;->v(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v5, v6, v8, v2}, Leu;->u(Lbff;Lbfi;Lorg/w3c/dom/Node;Z)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lbfq;->h(I)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lbfj;->a:Ljava/util/Map;

    iget-object v6, v5, Lbff;->a:Lbfi;

    const-string v7, "http://purl.org/dc/elements/1.1/"

    invoke-static {v6, v7, v2}, Leu;->o(Lbfi;Ljava/lang/String;Z)Lbfi;

    iget-object v0, v5, Lbff;->a:Lbfi;

    invoke-virtual {v0}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v9, 0x5

    const-string v10, "x-default"

    const/4 v11, 0x0

    if-eqz v0, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lbfi;

    iget-object v0, v12, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v12}, Lbfi;->a()I

    move-result v9

    if-gt v0, v9, :cond_8

    invoke-virtual {v12, v0}, Lbfi;->e(I)Lbfi;

    move-result-object v9

    sget-object v13, Lbfj;->a:Ljava/util/Map;

    iget-object v14, v9, Lbfi;->a:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lbfs;

    if-nez v13, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Lbfi;->g()Lbfs;

    move-result-object v14

    iget v14, v14, Lbfq;->a:I

    and-int/lit16 v14, v14, 0x300

    if-nez v14, :cond_6

    new-instance v14, Lbfi;

    iget-object v15, v9, Lbfi;->a:Ljava/lang/String;

    invoke-direct {v14, v15, v13}, Lbfi;-><init>(Ljava/lang/String;Lbfs;)V

    const-string v15, "[]"

    iput-object v15, v9, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {v14, v9}, Lbfi;->k(Lbfi;)V

    iput-object v12, v14, Lbfi;->c:Lbfi;

    invoke-virtual {v12}, Lbfi;->j()Ljava/util/List;

    move-result-object v15

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v15, v4, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Lbfs;->i()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v9}, Lbfi;->g()Lbfs;

    move-result-object v4

    invoke-virtual {v4}, Lbfs;->c()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Lbfi;

    const-string v13, "xml:lang"

    invoke-direct {v4, v13, v10, v11}, Lbfi;-><init>(Ljava/lang/String;Ljava/lang/String;Lbfs;)V

    invoke-virtual {v9, v4}, Lbfi;->m(Lbfi;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v9}, Lbfi;->g()Lbfs;

    move-result-object v4

    const/16 v14, 0x1e00

    invoke-virtual {v4, v14, v3}, Lbfq;->f(IZ)V

    invoke-virtual {v9}, Lbfi;->g()Lbfs;

    move-result-object v4

    invoke-virtual {v4, v13}, Lbfs;->b(Lbfs;)V

    invoke-virtual {v13}, Lbfs;->i()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v9}, Lbfj;->b(Lbfi;)V

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x2

    goto :goto_3

    :cond_8
    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_9
    iget-object v0, v12, Lbfi;->a:Ljava/lang/String;

    const-string v4, "http://ns.adobe.com/exif/1.0/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "exif:GPSTimeStamp"

    invoke-static {v12, v0, v3}, Leu;->m(Lbfi;Ljava/lang/String;Z)Lbfi;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v13, 0x2

    goto :goto_5

    :cond_a
    :try_start_2
    iget-object v4, v0, Lbfi;->b:Ljava/lang/String;

    invoke-static {v4}, Les;->f(Ljava/lang/String;)Lbez;

    move-result-object v4

    iget v10, v4, Lbez;->a:I

    if-nez v10, :cond_c

    iget v10, v4, Lbez;->b:I

    if-nez v10, :cond_c

    iget v10, v4, Lbez;->c:I

    if-nez v10, :cond_c

    const-string v10, "exif:DateTimeOriginal"

    invoke-static {v12, v10, v3}, Leu;->m(Lbfi;Ljava/lang/String;Z)Lbfi;

    move-result-object v10

    if-nez v10, :cond_b

    const-string v10, "exif:DateTimeDigitized"

    invoke-static {v12, v10, v3}, Leu;->m(Lbfi;Ljava/lang/String;Z)Lbfi;

    move-result-object v10

    :cond_b
    iget-object v10, v10, Lbfi;->b:Ljava/lang/String;

    invoke-static {v10}, Les;->f(Ljava/lang/String;)Lbez;

    move-result-object v10

    invoke-virtual {v4}, Lbez;->a()Ljava/util/Calendar;

    move-result-object v4

    iget v11, v10, Lbez;->a:I

    invoke-virtual {v4, v2, v11}, Ljava/util/Calendar;->set(II)V

    iget v11, v10, Lbez;->b:I
    :try_end_2
    .catch Lbeq; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v13, 0x2

    :try_start_3
    invoke-virtual {v4, v13, v11}, Ljava/util/Calendar;->set(II)V

    iget v10, v10, Lbez;->c:I

    invoke-virtual {v4, v9, v10}, Ljava/util/Calendar;->set(II)V

    new-instance v9, Lbez;

    invoke-direct {v9, v4}, Lbez;-><init>(Ljava/util/Calendar;)V

    invoke-static {v9}, Les;->e(Lbez;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lbfi;->b:Ljava/lang/String;
    :try_end_3
    .catch Lbeq; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_c
    const/4 v13, 0x2

    goto :goto_5

    :catch_3
    move-exception v0

    const/4 v13, 0x2

    :goto_5
    const-string v0, "exif:UserComment"

    invoke-static {v12, v0, v3}, Leu;->m(Lbfi;Ljava/lang/String;Z)Lbfi;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Lbfj;->b(Lbfi;)V

    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_d
    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_e
    const/4 v13, 0x2

    iget-object v0, v12, Lbfi;->a:Ljava/lang/String;

    const-string v4, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "xmpDM:copyright"

    invoke-static {v12, v0, v3}, Leu;->m(Lbfi;Ljava/lang/String;Z)Lbfi;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_4
    iget-object v4, v5, Lbff;->a:Lbfi;

    invoke-static {v4, v7, v2}, Leu;->o(Lbfi;Ljava/lang/String;Z)Lbfi;

    move-result-object v4

    iget-object v9, v0, Lbfi;->b:Ljava/lang/String;

    const-string v11, "\n\n"

    const-string v12, "dc:rights"

    invoke-static {v4, v12, v3}, Leu;->m(Lbfi;Ljava/lang/String;Z)Lbfi;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lbfi;->s()Z

    move-result v12

    if-nez v12, :cond_f

    goto :goto_6

    :cond_f
    invoke-static {v4, v10}, Leu;->l(Lbfi;Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_10

    invoke-virtual {v4, v2}, Lbfi;->e(I)Lbfi;

    move-result-object v12

    iget-object v12, v12, Lbfi;->b:Ljava/lang/String;

    invoke-interface {v5, v12}, Lber;->i(Ljava/lang/String;)V

    invoke-static {v4, v10}, Leu;->l(Lbfi;Ljava/lang/String;)I

    move-result v12

    :cond_10
    invoke-virtual {v4, v12}, Lbfi;->e(I)Lbfi;

    move-result-object v4

    iget-object v10, v4, Lbfi;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lbfi;->b:Ljava/lang/String;

    goto :goto_7

    :cond_11
    add-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    invoke-virtual {v10, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lbfi;->b:Ljava/lang/String;

    goto :goto_7

    :cond_12
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lber;->i(Ljava/lang/String;)V

    :cond_13
    :goto_7
    iget-object v4, v0, Lbfi;->c:Lbfi;

    invoke-virtual {v4, v0}, Lbfi;->o(Lbfi;)V
    :try_end_4
    .catch Lbeq; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v4, 0x2

    goto/16 :goto_2

    :catch_4
    move-exception v0

    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_14
    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_15
    iget-object v0, v12, Lbfi;->a:Ljava/lang/String;

    const-string v4, "http://ns.adobe.com/xap/1.0/rights/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "xmpRights:UsageTerms"

    invoke-static {v12, v0, v3}, Leu;->m(Lbfi;Ljava/lang/String;Z)Lbfi;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {v0}, Lbfj;->b(Lbfi;)V

    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_16
    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_17
    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_18
    iget-boolean v0, v6, Lbfi;->g:Z

    const/4 v4, 0x4

    if-nez v0, :cond_19

    goto/16 :goto_b

    :cond_19
    iput-boolean v3, v6, Lbfi;->g:Z

    invoke-virtual {v1, v4}, Lbfq;->h(I)Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lbfi;->j()Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbfi;

    iget-boolean v8, v7, Lbfi;->g:Z

    if-eqz v8, :cond_26

    invoke-virtual {v7}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_25

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lbfi;

    iget-boolean v13, v12, Lbfi;->h:Z

    if-eqz v13, :cond_24

    iput-boolean v3, v12, Lbfi;->h:Z

    sget-object v13, Lbet;->a:Lcvm;

    iget-object v14, v12, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcvm;->g(Ljava/lang/String;)Lbfk;

    move-result-object v13

    if-eqz v13, :cond_23

    iget-object v14, v13, Lbfk;->a:Ljava/lang/String;

    invoke-static {v6, v14, v11, v2}, Leu;->p(Lbfi;Ljava/lang/String;Ljava/lang/String;Z)Lbfi;

    move-result-object v14

    iput-boolean v3, v14, Lbfi;->f:Z

    iget-object v15, v13, Lbfk;->b:Ljava/lang/String;

    iget-object v11, v13, Lbfk;->c:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11, v3}, Leu;->m(Lbfi;Ljava/lang/String;Z)Lbfi;

    move-result-object v11

    if-nez v11, :cond_1b

    iget-object v11, v13, Lbfk;->d:Lbfo;

    invoke-virtual {v11}, Lbfo;->d()Z

    move-result v15

    if-eqz v15, :cond_1a

    iget-object v11, v13, Lbfk;->b:Ljava/lang/String;

    iget-object v13, v13, Lbfk;->c:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v12, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {v14, v12}, Lbfi;->k(Lbfi;)V

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    const/4 v11, 0x0

    goto :goto_9

    :cond_1a
    new-instance v15, Lbfi;

    iget-object v4, v13, Lbfk;->b:Ljava/lang/String;

    iget-object v13, v13, Lbfk;->c:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lbfo;->b()Lbfs;

    move-result-object v11

    invoke-direct {v15, v4, v11}, Lbfi;-><init>(Ljava/lang/String;Lbfs;)V

    invoke-virtual {v14, v15}, Lbfi;->k(Lbfi;)V

    invoke-static {v8, v12, v15}, Lbfj;->c(Ljava/util/Iterator;Lbfi;Lbfi;)V

    const/4 v4, 0x4

    const/4 v11, 0x0

    goto :goto_9

    :cond_1b
    iget-object v4, v13, Lbfk;->d:Lbfo;

    invoke-virtual {v4}, Lbfo;->d()Z

    move-result v13

    if-eqz v13, :cond_1d

    if-eqz v0, :cond_1c

    invoke-static {v12, v11, v2}, Lbfj;->a(Lbfi;Lbfi;Z)V

    :cond_1c
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    const/4 v4, 0x4

    const/4 v11, 0x0

    goto :goto_9

    :cond_1d
    invoke-virtual {v4}, Lbfo;->c()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {v11, v10}, Leu;->l(Lbfi;Ljava/lang/String;)I

    move-result v4

    const/4 v13, -0x1

    if-eq v4, v13, :cond_1e

    invoke-virtual {v11, v4}, Lbfi;->e(I)Lbfi;

    move-result-object v4

    goto :goto_a

    :cond_1e
    const/4 v4, 0x0

    goto :goto_a

    :cond_1f
    invoke-virtual {v11}, Lbfi;->s()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v11, v2}, Lbfi;->e(I)Lbfi;

    move-result-object v4

    goto :goto_a

    :cond_20
    const/4 v4, 0x0

    :goto_a
    if-nez v4, :cond_21

    invoke-static {v8, v12, v11}, Lbfj;->c(Ljava/util/Iterator;Lbfi;Lbfi;)V

    const/4 v4, 0x4

    const/4 v11, 0x0

    goto/16 :goto_9

    :cond_21
    if-eqz v0, :cond_22

    invoke-static {v12, v4, v2}, Lbfj;->a(Lbfi;Lbfi;Z)V

    :cond_22
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    const/4 v4, 0x4

    const/4 v11, 0x0

    goto/16 :goto_9

    :cond_23
    const/4 v4, 0x4

    const/4 v11, 0x0

    goto/16 :goto_9

    :cond_24
    const/4 v4, 0x4

    const/4 v11, 0x0

    goto/16 :goto_9

    :cond_25
    iput-boolean v3, v7, Lbfi;->g:Z

    const/4 v4, 0x4

    const/4 v11, 0x0

    goto/16 :goto_8

    :cond_26
    const/4 v4, 0x4

    const/4 v11, 0x0

    goto/16 :goto_8

    :cond_27
    :goto_b
    iget-object v0, v6, Lbfi;->a:Ljava/lang/String;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x24

    if-lt v1, v4, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_28
    sget v7, Lbey;->a:I

    if-nez v0, :cond_29

    goto :goto_e

    :cond_29
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_2d

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_2c

    add-int/lit8 v9, v9, 0x1

    if-eqz v8, :cond_2b

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2a

    const/16 v8, 0xd

    if-eq v7, v8, :cond_2a

    const/16 v8, 0x12

    if-eq v7, v8, :cond_2a

    const/16 v8, 0x17

    if-ne v7, v8, :cond_2b

    const/16 v7, 0x17

    :cond_2a
    const/4 v8, 0x1

    goto :goto_d

    :cond_2b
    const/4 v8, 0x0

    :cond_2c
    :goto_d
    add-int/2addr v7, v2

    goto :goto_c

    :cond_2d
    if-eqz v8, :cond_2f

    const/4 v8, 0x4

    if-ne v9, v8, :cond_2f

    if-ne v7, v4, :cond_2f

    const-string v4, "http://ns.adobe.com/xap/1.0/mm/"

    const-string v7, "InstanceID"

    invoke-static {v4, v7}, Ldp;->x(Ljava/lang/String;Ljava/lang/String;)Lbfm;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v6, v4, v2, v7}, Leu;->n(Lbfi;Lbfm;ZLbfs;)Lbfi;

    move-result-object v2

    if-eqz v2, :cond_2e

    iput-object v7, v2, Lbfi;->e:Lbfs;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lbfi;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lbfi;->p()V

    invoke-virtual {v2}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0, v3}, Lbfs;->v(Z)V

    invoke-virtual {v0, v3}, Lbfs;->u(Z)V

    invoke-virtual {v0, v3}, Lbfs;->w(Z)V

    const/4 v0, 0x0

    iput-object v0, v2, Lbfi;->d:Ljava/util/List;

    iput-object v0, v6, Lbfi;->a:Ljava/lang/String;

    goto :goto_e

    :cond_2e
    new-instance v0, Lbeq;

    const-string v1, "Failure creating xmpMM:InstanceID"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2f
    :goto_e
    invoke-virtual {v6}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfi;

    invoke-virtual {v1}, Lbfi;->s()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_31
    return-object v5

    :cond_32
    return-object v5

    :cond_33
    new-instance v0, Lbeq;

    const-string v1, "Invalid attributes of rdf:RDF element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_34
    new-instance v0, Lbff;

    invoke-direct {v0}, Lbff;-><init>()V

    return-object v0

    :cond_35
    goto :goto_11

    :goto_10
    throw v3

    :goto_11
    goto :goto_10
.end method

.method private static b(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 3

    :try_start_0
    sget-object v0, Lbfg;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lbeq;

    const-string v1, "Error reading the XML-file"

    const/16 v2, 0xcc

    invoke-direct {v0, v1, v2, p0}, Lbeq;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lbeq;

    const-string v1, "XML Parser not correctly configured"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lbeq;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lbeq;

    const-string v1, "XML parsing failure"

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v2, p0}, Lbeq;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0
.end method

.method private static c(Lbev;Lbfr;)Lorg/w3c/dom/Document;
    .locals 13

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lbev;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {v0}, Lbfg;->b(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_0
    .catch Lbeq; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    iget v1, v0, Lbeq;->a:I

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lbfr;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lbev;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x8

    new-array v2, v1, [B

    new-instance v3, Lbev;

    iget v4, p0, Lbev;->b:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Lbev;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    iget v9, p0, Lbev;->b:I

    const/16 v10, 0xb

    if-ge v5, v9, :cond_8

    if-ge v5, v9, :cond_7

    iget-object v9, p0, Lbev;->a:[B

    aget-byte v9, v9, v5

    and-int/lit16 v9, v9, 0xff

    const/16 v11, 0x80

    packed-switch v6, :pswitch_data_0

    const/16 v12, 0x7f

    if-ge v9, v12, :cond_4

    int-to-byte v9, v9

    iget v10, v3, Lbev;->b:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v3, v10}, Lbev;->d(I)V

    iget-object v10, v3, Lbev;->a:[B

    iget v11, v3, Lbev;->b:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v3, Lbev;->b:I

    aput-byte v9, v10, v11

    goto :goto_3

    :pswitch_0
    if-lez v7, :cond_3

    and-int/lit16 v10, v9, 0xc0

    if-ne v10, v11, :cond_3

    add-int/lit8 v10, v8, 0x1

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_2

    invoke-virtual {v3, v2, v10}, Lbev;->e([BI)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_3

    :cond_2
    move v8, v10

    goto :goto_3

    :cond_3
    aget-byte v6, v2, v4

    invoke-static {v6}, Let;->l(B)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lbev;->c([B)V

    sub-int/2addr v5, v8

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    const/16 v12, 0xc0

    if-lt v9, v12, :cond_6

    const/4 v6, -0x1

    move v6, v9

    const/4 v7, -0x1

    :goto_2
    if-ge v7, v1, :cond_5

    and-int/lit16 v12, v6, 0x80

    if-ne v12, v11, :cond_5

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v6

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v8, 0x1

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    move v8, v6

    const/16 v6, 0xb

    goto :goto_3

    :cond_6
    int-to-byte v9, v9

    invoke-static {v9}, Let;->l(B)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Lbev;->c([B)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "The index exceeds the valid buffer area"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-ne v6, v10, :cond_a

    :goto_4
    if-ge v4, v8, :cond_9

    aget-byte p0, v2, v4

    invoke-static {p0}, Let;->l(B)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Lbev;->c([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    goto :goto_5

    :cond_a
    :goto_5
    move-object p0, v3

    :cond_b
    invoke-virtual {p1}, Lbfr;->c()Z

    move-result p1

    if-eqz p1, :cond_c

    :try_start_1
    invoke-virtual {p0}, Lbev;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lbex;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lbev;->a()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lbex;-><init>(Ljava/io/Reader;)V

    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-direct {p0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {p0}, Lbfg;->b(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p0, Lbeq;

    const-string p1, "Unsupported Encoding"

    const/16 v1, 0x9

    invoke-direct {p0, p1, v1, v0}, Lbeq;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p0

    :cond_c
    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lbev;->a()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1}, Lbfg;->b(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method private static d(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v3}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xpacket"

    if-ne v5, v6, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, p2, v3

    goto :goto_2

    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_6

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v3, v4, :cond_6

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "xmpmeta"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "xapmeta"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "adobe:ns:meta/"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_2
    if-nez p1, :cond_4

    const-string v5, "RDF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    aput-object v2, p2, v0

    sget-object p0, Lbfg;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    aput-object p0, p2, p1

    return-object p2

    :cond_4
    :goto_1
    invoke-static {v2, p1, p2}, Lbfg;->d(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    return-object v2

    :cond_5
    invoke-static {v2, v0, p2}, Lbfg;->d(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method
