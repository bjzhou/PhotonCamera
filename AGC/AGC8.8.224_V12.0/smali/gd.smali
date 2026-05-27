.class public final Lgd;
.super Landroid/view/MenuInflater;


# static fields
.field static final a:[Ljava/lang/Class;

.field static final b:[Ljava/lang/Class;


# instance fields
.field final c:[Ljava/lang/Object;

.field final d:[Ljava/lang/Object;

.field final e:Landroid/content/Context;

.field public f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lgd;->a:[Ljava/lang/Class;

    sput-object v1, Lgd;->b:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lgd;->e:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lgd;->c:[Ljava/lang/Object;

    iput-object v0, p0, Lgd;->d:[Ljava/lang/Object;

    return-void
.end method

.method private final b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Lgc;

    move-object/from16 v3, p3

    invoke-direct {v2, v0, v3}, Lgc;-><init>(Lgd;Landroid/view/Menu;)V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_0
    const-string v4, "menu"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v3, v5, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Expecting menu, got "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v6, :cond_12

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-nez v9, :cond_11

    const-string v12, "item"

    const-string v13, "group"

    packed-switch v3, :pswitch_data_0

    move-object/from16 v12, p1

    const/4 v7, 0x0

    goto/16 :goto_7

    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v10, :cond_2

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v12, p1

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v2}, Lgc;->c()V

    move-object/from16 v12, p1

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_3
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-boolean v3, v2, Lgc;->h:Z

    if-nez v3, :cond_5

    iget-object v3, v2, Lgc;->A:Laej;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Laej;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lgc;->a()Landroid/view/SubMenu;

    move-object/from16 v12, p1

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_4
    iput-boolean v6, v2, Lgc;->h:Z

    iget-object v3, v2, Lgc;->a:Landroid/view/Menu;

    iget v12, v2, Lgc;->b:I

    iget v13, v2, Lgc;->i:I

    iget v14, v2, Lgc;->j:I

    iget-object v15, v2, Lgc;->k:Ljava/lang/CharSequence;

    invoke-interface {v3, v12, v13, v14, v15}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgc;->d(Landroid/view/MenuItem;)V

    move-object/from16 v12, p1

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_5
    move-object/from16 v12, p1

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v12, p1

    const/4 v7, 0x0

    if-eqz v3, :cond_10

    const/4 v9, 0x1

    goto/16 :goto_7

    :pswitch_1
    if-nez v10, :cond_f

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/4 v7, 0x3

    if-eqz v13, :cond_7

    iget-object v3, v2, Lgc;->F:Lgd;

    iget-object v3, v3, Lgd;->e:Landroid/content/Context;

    sget-object v12, Lfr;->p:[I

    invoke-virtual {v3, v1, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v2, Lgc;->b:I

    invoke-virtual {v3, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v2, Lgc;->c:I

    invoke-virtual {v3, v15, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v2, Lgc;->d:I

    invoke-virtual {v3, v14, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v2, Lgc;->e:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v2, Lgc;->f:Z

    invoke-virtual {v3, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v2, Lgc;->g:Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v12, p1

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_7
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v3, v2, Lgc;->F:Lgd;

    iget-object v3, v3, Lgd;->e:Landroid/content/Context;

    sget-object v12, Lfr;->q:[I

    invoke-static {v3, v1, v12}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v3

    invoke-virtual {v3, v5, v8}, Landroidx/wear/ambient/AmbientDelegate;->s(II)I

    move-result v12

    iput v12, v2, Lgc;->i:I

    iget v12, v2, Lgc;->c:I

    invoke-virtual {v3, v14, v12}, Landroidx/wear/ambient/AmbientDelegate;->p(II)I

    move-result v12

    iget v13, v2, Lgc;->d:I

    const/4 v14, 0x6

    invoke-virtual {v3, v14, v13}, Landroidx/wear/ambient/AmbientDelegate;->p(II)I

    move-result v13

    const/high16 v14, -0x10000

    and-int/2addr v12, v14

    int-to-char v13, v13

    or-int/2addr v12, v13

    iput v12, v2, Lgc;->j:I

    const/4 v12, 0x7

    invoke-virtual {v3, v12}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v2, Lgc;->k:Ljava/lang/CharSequence;

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v2, Lgc;->l:Ljava/lang/CharSequence;

    invoke-virtual {v3, v8, v8}, Landroidx/wear/ambient/AmbientDelegate;->s(II)I

    move-result v12

    iput v12, v2, Lgc;->m:I

    const/16 v12, 0x9

    invoke-virtual {v3, v12}, Landroidx/wear/ambient/AmbientDelegate;->x(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lgc;->e(Ljava/lang/String;)C

    move-result v12

    iput-char v12, v2, Lgc;->n:C

    const/16 v12, 0x10

    const/16 v13, 0x1000

    invoke-virtual {v3, v12, v13}, Landroidx/wear/ambient/AmbientDelegate;->p(II)I

    move-result v12

    iput v12, v2, Lgc;->o:I

    const/16 v12, 0xa

    invoke-virtual {v3, v12}, Landroidx/wear/ambient/AmbientDelegate;->x(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lgc;->e(Ljava/lang/String;)C

    move-result v12

    iput-char v12, v2, Lgc;->p:C

    const/16 v12, 0x14

    invoke-virtual {v3, v12, v13}, Landroidx/wear/ambient/AmbientDelegate;->p(II)I

    move-result v12

    iput v12, v2, Lgc;->q:I

    const/16 v12, 0xb

    invoke-virtual {v3, v12}, Landroidx/wear/ambient/AmbientDelegate;->A(I)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v3, v12, v8}, Landroidx/wear/ambient/AmbientDelegate;->z(IZ)Z

    move-result v12

    iput v12, v2, Lgc;->r:I

    goto :goto_3

    :cond_8
    iget v12, v2, Lgc;->e:I

    iput v12, v2, Lgc;->r:I

    :goto_3
    invoke-virtual {v3, v7, v8}, Landroidx/wear/ambient/AmbientDelegate;->z(IZ)Z

    move-result v7

    iput-boolean v7, v2, Lgc;->s:Z

    iget-boolean v7, v2, Lgc;->f:Z

    invoke-virtual {v3, v15, v7}, Landroidx/wear/ambient/AmbientDelegate;->z(IZ)Z

    move-result v7

    iput-boolean v7, v2, Lgc;->t:Z

    iget-boolean v7, v2, Lgc;->g:Z

    invoke-virtual {v3, v6, v7}, Landroidx/wear/ambient/AmbientDelegate;->z(IZ)Z

    move-result v7

    iput-boolean v7, v2, Lgc;->u:Z

    const/16 v7, 0x15

    const/4 v12, -0x1

    invoke-virtual {v3, v7, v12}, Landroidx/wear/ambient/AmbientDelegate;->p(II)I

    move-result v7

    iput v7, v2, Lgc;->v:I

    const/16 v7, 0xc

    invoke-virtual {v3, v7}, Landroidx/wear/ambient/AmbientDelegate;->x(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lgc;->z:Ljava/lang/String;

    const/16 v7, 0xd

    invoke-virtual {v3, v7, v8}, Landroidx/wear/ambient/AmbientDelegate;->s(II)I

    move-result v7

    iput v7, v2, Lgc;->w:I

    const/16 v7, 0xf

    invoke-virtual {v3, v7}, Landroidx/wear/ambient/AmbientDelegate;->x(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lgc;->x:Ljava/lang/String;

    const/16 v7, 0xe

    invoke-virtual {v3, v7}, Landroidx/wear/ambient/AmbientDelegate;->x(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lgc;->y:Ljava/lang/String;

    iget-object v7, v2, Lgc;->y:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget v13, v2, Lgc;->w:I

    if-nez v13, :cond_9

    iget-object v13, v2, Lgc;->x:Ljava/lang/String;

    if-nez v13, :cond_9

    sget-object v13, Lgd;->b:[Ljava/lang/Class;

    iget-object v14, v2, Lgc;->F:Lgd;

    iget-object v14, v14, Lgd;->d:[Ljava/lang/Object;

    invoke-virtual {v2, v7, v13, v14}, Lgc;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laej;

    iput-object v7, v2, Lgc;->A:Laej;

    goto :goto_4

    :cond_9
    const-string v7, "SupportMenuInflater"

    const-string v13, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v7, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v7, 0x0

    iput-object v7, v2, Lgc;->A:Laej;

    :goto_4
    const/16 v7, 0x11

    invoke-virtual {v3, v7}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v2, Lgc;->B:Ljava/lang/CharSequence;

    const/16 v7, 0x16

    invoke-virtual {v3, v7}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v2, Lgc;->C:Ljava/lang/CharSequence;

    const/16 v7, 0x13

    invoke-virtual {v3, v7}, Landroidx/wear/ambient/AmbientDelegate;->A(I)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual {v3, v7, v12}, Landroidx/wear/ambient/AmbientDelegate;->p(II)I

    move-result v7

    iget-object v12, v2, Lgc;->E:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v7, v12}, Lkh;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iput-object v7, v2, Lgc;->E:Landroid/graphics/PorterDuff$Mode;

    goto :goto_5

    :cond_b
    const/4 v7, 0x0

    iput-object v7, v2, Lgc;->E:Landroid/graphics/PorterDuff$Mode;

    :goto_5
    const/16 v7, 0x12

    invoke-virtual {v3, v7}, Landroidx/wear/ambient/AmbientDelegate;->A(I)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v3, v7}, Landroidx/wear/ambient/AmbientDelegate;->t(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, v2, Lgc;->D:Landroid/content/res/ColorStateList;

    const/4 v7, 0x0

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    iput-object v7, v2, Lgc;->D:Landroid/content/res/ColorStateList;

    :goto_6
    invoke-virtual {v3}, Landroidx/wear/ambient/AmbientDelegate;->y()V

    iput-boolean v8, v2, Lgc;->h:Z

    move-object/from16 v12, p1

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v2}, Lgc;->a()Landroid/view/SubMenu;

    move-result-object v3

    move-object/from16 v12, p1

    invoke-direct {v0, v12, v1, v3}, Lgd;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_7

    :cond_e
    move-object/from16 v12, p1

    move-object v11, v3

    const/4 v10, 0x1

    goto :goto_7

    :cond_f
    move-object/from16 v12, p1

    const/4 v7, 0x0

    goto :goto_7

    :pswitch_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected end of document"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_2

    :cond_11
    return-void

    :cond_12
    move-object/from16 v12, p1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final inflate(ILandroid/view/Menu;)V
    .locals 3

    const-string v0, "Error inflating menu XML"

    instance-of v1, p2, Ladc;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lgd;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    invoke-direct {p0, v1, p1, p2}, Lgd;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_0
    :try_start_2
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    :goto_1
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw p1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method
