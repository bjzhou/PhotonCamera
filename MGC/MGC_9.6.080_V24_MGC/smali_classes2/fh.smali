.class public final Lfh;
.super Landroid/view/MenuInflater;
.source "PG"


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
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-class v0, Landroid/content/Context;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lfh;->a:[Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    sput-object v0, Lfh;->b:[Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfh;->c:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object p1, p0, Lfh;->e:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lfh;->d:[Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_0
    iput v10, v2, Lfg;->q:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_51

    nop

    nop

    :goto_2
    const-string v1, "Unexpected end of document"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v10, 0x16

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_4
    invoke-virtual {v3, v10, v12}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result v10

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3, v10}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/String;

    move-result-object v10

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v10, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    goto/32 :goto_4e

    nop

    nop

    :goto_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw v1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    iput v10, v2, Lfg;->e:I

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v3, v12, v13, v14, v15}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v10, 0x15

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object/from16 v10, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v3, v6, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_10
    iget v14, v2, Lfg;->j:I

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v3, v10, v12}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_12
    const/16 v12, 0x1000

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_db

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v3, v10

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v10, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_1
    goto/32 :goto_6e

    nop

    nop

    :goto_17
    iput-object v7, v2, Lfg;->D:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2a

    nop

    nop

    :goto_19
    if-nez v10, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne v3, v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput v10, v2, Lfg;->r:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3, v10, v8}, Landroidx/wear/ambient/AmbientDelegate;->y(IZ)Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v12, :cond_4

    nop

    nop

    goto/32 :goto_10b

    nop

    :cond_4
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0, v10, v1, v3}, Lfh;->f875135777c17da3cef2ea6eeff5be29m(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, v3, Lfh;->e:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v10, v2, Lfg;->D:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    :goto_24
    int-to-char v12, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_26
    invoke-virtual {v3, v5, v8}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v10

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v13, v2, Lfg;->w:I

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v13, v2, Lfg;->E:Lfh;

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v2, v0, v3}, Lfg;-><init>(Lfh;Landroid/view/Menu;)V

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/16 v10, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget v10, v2, Lfg;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object v10, v2, Lfg;->l:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v13, v13, Lfh;->d:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_2e
    iput-boolean v10, v2, Lfg;->t:Z

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object v11, v7

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_30
    goto/16 :goto_100

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v10, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v14, 0x3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_34
    const/16 v10, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_35
    move v9, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_36
    or-int/2addr v10, v12

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v12, :cond_5

    nop

    goto/32 :goto_9e

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v3, v10}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v12

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v7, v2, Lfg;->C:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    :goto_3d
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v3, v10}, Landroidx/wear/ambient/AmbientDelegate;->v(I)Ljava/lang/CharSequence;

    move-result-object v10

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v2}, Lfg;->a()Landroid/view/SubMenu;

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/16 v10, 0xe

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput v10, v2, Lfg;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v3, v12, v13}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_43
    move v9, v8

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v2}, Lfg;->a()Landroid/view/SubMenu;

    move-result-object v3

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move-object/from16 v10, p1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v3, v13, v10}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput-object v10, v2, Lfg;->C:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v7, :cond_6

    nop

    goto/32 :goto_de

    nop

    :cond_6
    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_49
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/16 v10, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_100

    nop

    nop

    :goto_4c
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4e
    iput-object v7, v2, Lfg;->F:Ldvu;

    nop

    nop

    :goto_4f
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v10, v12}, La;->n(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_51
    throw v0

    nop

    :goto_52
    goto/32 :goto_3c

    nop

    nop

    :goto_53
    invoke-virtual {v3, v10}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_54
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_55
    iget-object v3, v2, Lfg;->a:Landroid/view/Menu;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v3, v15, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_57
    invoke-static {v3, v1, v10}, Landroidx/wear/ambient/AmbientDelegate;->B(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_58
    iput v10, v2, Lfg;->c:I

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v3, v10}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_5a
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_7
    goto/32 :goto_5d

    nop

    :goto_5b
    move v3, v6

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v10, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    :cond_8
    goto/32 :goto_10f

    nop

    nop

    :goto_5d
    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_5f
    const/16 v10, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_60
    iget-boolean v10, v2, Lfg;->g:Z

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iput-char v10, v2, Lfg;->n:C

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_62
    move v10, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_63
    const/16 v10, 0x14

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iput-boolean v10, v2, Lfg;->f:Z

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v3, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_66
    const/4 v13, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-nez v13, :cond_9

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v3, v3, Lfh;->e:Landroid/content/Context;

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_69
    move-object/from16 v10, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6a
    iget v12, v2, Lfg;->b:I

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v3, v10}, Landroidx/wear/ambient/AmbientDelegate;->v(I)Ljava/lang/CharSequence;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    new-instance v1, Ljava/lang/RuntimeException;

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-eq v3, v5, :cond_a

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v3, v2, Lfg;->E:Lfh;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move-object/from16 v10, p1

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_70
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v12, v2, Lfg;->D:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_72
    iput-object v10, v2, Lfg;->B:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_74
    if-nez v10, :cond_b

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_75
    move v3, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_76
    const/16 v10, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_77
    iput v10, v2, Lfg;->m:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iput-boolean v8, v2, Lfg;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move-object v11, v3

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_7b
    move v3, v12

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_7c
    iput v10, v2, Lfg;->r:I

    nop

    nop

    :goto_7d
    goto/32 :goto_e8

    nop

    nop

    :goto_7e
    invoke-virtual {v3, v10, v12}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result v10

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_7f
    iget-object v3, v2, Lfg;->F:Ldvu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :goto_81
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v3, v10}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_83
    move-object/from16 v10, p1

    nop

    nop

    :goto_84
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v13, v2, Lfg;->x:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v3, v8, v8}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v10

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_87
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    const-string v13, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_89
    invoke-virtual {v3, v10}, Landroidx/wear/ambient/AmbientDelegate;->v(I)Ljava/lang/CharSequence;

    move-result-object v10

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v3, v14, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v3, v10}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v3, v10}, Landroidx/wear/ambient/AmbientDelegate;->s(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v3, v1, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_8e
    const/16 v10, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    if-nez v10, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :cond_c
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_90
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    move-object/from16 v10, p1

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v3}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_78

    nop

    nop

    :goto_94
    add-int v0, v0, v1

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v3, v10, v12}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_96
    invoke-virtual {v3, v10}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    const/4 v12, -0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v3, v2, Lfg;->E:Lfh;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_99
    move-object v11, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iput-boolean v10, v2, Lfg;->u:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9b
    move-object/from16 v0, p0

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_9c
    sget-object v12, Landroidx/wear/widget/xrA/fuyPMnCeXU;->MhbqPlPFeqOeOxD:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/16 :goto_7d

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_9f
    move v10, v9

    nop

    :goto_a0
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v2, v3}, Lfg;->d(Landroid/view/MenuItem;)V

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_a2
    if-eqz v13, :cond_d

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :cond_d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v3, v10}, Landroidx/wear/ambient/AmbientDelegate;->v(I)Ljava/lang/CharSequence;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_a4
    const/4 v7, 0x0

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_a5
    iget v13, v2, Lfg;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v3, v10, v8}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v3, v6, v10}, Landroidx/wear/ambient/AmbientDelegate;->y(IZ)Z

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iput v10, v2, Lfg;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_a9
    move-object/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_aa
    iput-boolean v10, v2, Lfg;->s:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_ab
    goto/16 :goto_84

    nop

    :goto_ac
    goto/32 :goto_6f

    nop

    nop

    :goto_ad
    check-cast v10, Ldvu;

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    goto/16 :goto_fc

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_fb

    nop

    nop

    :goto_b0
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v3, v15, v10}, Landroidx/wear/ambient/AmbientDelegate;->y(IZ)Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_b2
    if-nez v10, :cond_e

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_98

    nop

    nop

    nop

    :goto_b3
    iget-boolean v10, v2, Lfg;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    if-nez v3, :cond_f

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    if-eqz v9, :cond_10

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_10
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    const/4 v15, 0x4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_ba
    const/16 v10, 0x9

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_bb
    new-instance v2, Lfg;

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_bc
    iget-object v10, v2, Lfg;->y:Ljava/lang/String;

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_bd
    const-string v13, "group"

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_be
    if-eqz v13, :cond_11

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_bf
    iput v10, v2, Lfg;->w:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_c0
    goto/16 :goto_a0

    nop

    nop

    :goto_c1
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_c2
    const/4 v12, 0x0

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    goto/16 :goto_100

    nop

    nop

    nop

    :goto_c4
    goto/32 :goto_113

    nop

    nop

    nop

    :goto_c5
    const/16 v10, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_c6
    const/16 v10, 0x11

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    iput-object v10, v2, Lfg;->F:Ldvu;

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {v3, v13, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    iput-boolean v6, v2, Lfg;->h:Z

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_ca
    iget v10, v2, Lfg;->c:I

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    iput-object v10, v2, Lfg;->y:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iput-char v10, v2, Lfg;->p:C

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_cd
    goto/16 :goto_4f

    nop

    nop

    :goto_ce
    goto/32 :goto_116

    nop

    nop

    :goto_cf
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_d0
    if-nez v3, :cond_12

    nop

    nop

    goto/32 :goto_100

    nop

    :cond_12
    goto/32 :goto_35

    nop

    nop

    :goto_d1
    invoke-virtual {v3}, Ldvu;->c()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_d2
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_d3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    iput-object v10, v2, Lfg;->A:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iput-object v10, v2, Lfg;->z:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_d7
    iget-object v15, v2, Lfg;->k:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_d8
    if-eq v3, v6, :cond_13

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_13
    :goto_d9
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_da
    goto/16 :goto_110

    nop

    nop

    nop

    nop

    :goto_db
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    if-eqz v3, :cond_14

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    goto :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_de
    goto/32 :goto_d4

    nop

    nop

    :goto_df
    iget-boolean v3, v2, Lfg;->h:Z

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_e0
    const/16 v10, 0xd

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    and-int/2addr v10, v13

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_e2
    const/high16 v13, -0x10000

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    iput v10, v2, Lfg;->v:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    iput-object v10, v2, Lfg;->x:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_e5
    invoke-virtual {v3, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    goto/16 :goto_db

    nop

    nop

    nop

    nop

    :goto_e7
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {v3, v14, v8}, Landroidx/wear/ambient/AmbientDelegate;->y(IZ)Z

    move-result v10

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    nop

    nop

    nop

    :goto_ea
    goto/32 :goto_ed

    nop

    nop

    :goto_eb
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    sget-object v10, Lew;->p:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    const-string v4, "menu"

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v3, v10}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-static {v10}, Lfg;->e(Ljava/lang/String;)C

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_f0
    const v0, 0x12

    nop

    goto/32 :goto_f9

    nop

    nop

    :goto_f1
    invoke-virtual {v2}, Lfg;->c()V

    goto/32 :goto_c3

    nop

    nop

    :goto_f2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_f3
    const/16 v10, 0x10

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    iput v10, v2, Lfg;->i:I

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    goto/16 :goto_84

    nop

    nop

    nop

    nop

    :goto_f7
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_f8
    sget-object v14, Lfh;->b:[Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_f9
    const v1, 0xb

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    if-nez v13, :cond_15

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_fb
    move v10, v8

    nop

    nop

    nop

    nop

    :goto_fc
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {v2, v10, v14, v13}, Lfg;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    iget v13, v2, Lfg;->d:I

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    if-ne v3, v14, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_16
    :goto_100
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    iput v10, v2, Lfg;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_102
    goto/16 :goto_81

    nop

    nop

    :goto_103
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_104
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_105
    if-nez v3, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_17
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_106
    invoke-static {v10}, Lfg;->e(Ljava/lang/String;)C

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_107
    goto/16 :goto_18

    nop

    :goto_108
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_109
    iput v10, v2, Lfg;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    goto :goto_100

    nop

    :goto_10b
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    goto/16 :goto_ea

    nop

    nop

    nop

    :goto_10d
    goto/32 :goto_7a

    nop

    nop

    :goto_10e
    const-string v2, "Expecting menu, got "

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_10f
    move-object/from16 v10, p1

    nop

    nop

    :goto_110
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_111
    const/4 v12, 0x6

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_112
    iput-object v10, v2, Lfg;->k:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    if-nez v10, :cond_18

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    if-nez v12, :cond_19

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    const-string v10, "SupportMenuInflater"

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_117
    iput-boolean v10, v2, Lfg;->g:Z

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_118
    sget-object v10, Lew;->q:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_119
    move v10, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_11a
    move-object/from16 v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p1

    nop

    :goto_2
    goto :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    instance-of v0, p1, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    instance-of v0, p1, Landroid/content/ContextWrapper;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lfh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p1, Landroid/content/ContextWrapper;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final inflate(ILandroid/view/Menu;)V
    .locals 5

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x12

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of v1, p2, Lduf;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    check-cast p2, Lfx;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v2, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    :goto_d
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    :goto_12
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_1c

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    nop

    nop

    :try_start_0
    iget-object v3, p0, Lfh;->e:Landroid/content/Context;

    nop

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    nop

    instance-of v3, p2, Lfx;

    nop

    if-eqz v3, :cond_4

    nop

    nop

    move-object v3, p2

    nop

    nop

    nop

    check-cast v3, Lfx;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v4, v3, Lfx;->h:Z

    nop

    if-nez v4, :cond_4

    nop

    nop

    nop

    invoke-virtual {v3}, Lfx;->s()V

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    :cond_4
    invoke-direct {p0, v1, p1, p2}, Lfh;->f875135777c17da3cef2ea6eeff5be29m(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_19
    goto :goto_1b

    nop

    nop

    nop

    :goto_1a
    :try_start_1
    new-instance p1, Landroid/view/InflateException;

    nop

    nop

    nop

    invoke-direct {p1, v0, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    nop

    nop

    :goto_1b
    new-instance p1, Landroid/view/InflateException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, v0, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p2}, Lfx;->r()V

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p2, Lfx;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_5

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    const-string v0, "Error inflating menu XML"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p2}, Lfx;->r()V

    :goto_23
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_1a

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
