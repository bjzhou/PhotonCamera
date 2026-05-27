.class public final Lhap;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;

.field private static final b:Ljava/util/EnumMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/apps/camera/settings/util/SettingsUtil"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhap;->a:Lnak;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lklv;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lhap;->b:Ljava/util/EnumMap;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Lklv;)Lkaf;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "1836x3264"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v4, Lhap;->b:Ljava/util/EnumMap;

    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhao;

    goto/16 :goto_4

    :cond_0
    new-instance v4, Lhao;

    invoke-direct {v4}, Lhao;-><init>()V

    new-instance v5, Lye;

    const/4 v7, 0x6

    invoke-direct {v5, v7}, Lye;-><init>(I)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkaf;

    iput-object v7, v4, Lhao;->a:Lkaf;

    iget-object v7, v4, Lhao;->a:Lkaf;

    iget v8, v7, Lkaf;->a:I

    int-to-float v8, v8

    iget v7, v7, Lkaf;->b:I

    int-to-float v7, v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_2

    div-float v12, v8, v7

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkaf;

    iget v14, v13, Lkaf;->a:I

    int-to-float v14, v14

    iget v15, v13, Lkaf;->b:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    sub-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-double v14, v12

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v12, v14, v16

    if-gez v12, :cond_1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v6, :cond_3

    move-object v3, v9

    goto :goto_1

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v3, Lhap;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    const-string v5, "Only one supported resolution."

    const/16 v7, 0xd4c

    invoke-static {v3, v5, v7}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v3, v4, Lhao;->a:Lkaf;

    iput-object v3, v4, Lhao;->b:Lkaf;

    iput-object v3, v4, Lhao;->c:Lkaf;

    goto/16 :goto_3

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    sget-object v7, Lhap;->a:Lnak;

    invoke-virtual {v7}, Lnaf;->c()Lnaz;

    move-result-object v7

    const-string v8, "Only two supported resolutions."

    const/16 v9, 0xd4b

    invoke-static {v7, v8, v9}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkaf;

    iput-object v7, v4, Lhao;->b:Lkaf;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkaf;

    iput-object v3, v4, Lhao;->c:Lkaf;

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v6, :cond_6

    sget-object v7, Lhap;->a:Lnak;

    invoke-virtual {v7}, Lnaf;->c()Lnaz;

    move-result-object v7

    const-string v9, "Exactly three supported resolutions."

    const/16 v10, 0xd4a

    invoke-static {v7, v9, v10}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkaf;

    iput-object v5, v4, Lhao;->b:Lkaf;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkaf;

    iput-object v3, v4, Lhao;->c:Lkaf;

    goto :goto_3

    :cond_6
    iget-object v5, v4, Lhao;->a:Lkaf;

    iget v7, v5, Lkaf;->a:I

    iget v5, v5, Lkaf;->b:I

    mul-int v7, v7, v5

    int-to-float v5, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v7, v7, v5

    float-to-int v7, v7

    invoke-static {v3, v7}, Lhap;->c(Ljava/util/List;I)I

    move-result v7

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float v5, v5, v8

    float-to-int v5, v5

    invoke-static {v3, v5}, Lhap;->c(Ljava/util/List;I)I

    move-result v5

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkaf;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lkaf;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v7, v7, -0x1

    :cond_8
    :goto_2
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkaf;

    iput-object v7, v4, Lhao;->b:Lkaf;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkaf;

    iput-object v3, v4, Lhao;->c:Lkaf;

    :goto_3
    sget-object v3, Lhap;->b:Ljava/util/EnumMap;

    invoke-virtual {v3, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    :goto_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "large"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, v2, Lhao;->a:Lkaf;

    goto :goto_5

    :cond_9
    const-string v3, "medium"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v0, v2, Lhao;->b:Lkaf;

    goto :goto_5

    :cond_a
    const-string v3, "small"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v0, v2, Lhao;->c:Lkaf;

    goto :goto_5

    :cond_b
    if-eqz v0, :cond_d

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ne v3, v6, :cond_d

    invoke-static/range {p0 .. p0}, Lkba;->e(Ljava/lang/String;)Lkaf;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    :goto_5
    return-object v0

    :cond_d
    :goto_6
    iget-object v0, v2, Lhao;->a:Lkaf;

    return-object v0

    :cond_e
    sget-object v0, Lhan;->a:Lkaf;

    return-object v0
.end method

.method public static b(Lklv;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lklv;->a:Lklv;

    invoke-virtual {p0}, Lklv;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lhap;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Unsupported facing value: %s"

    const/16 v2, 0xd4d

    invoke-static {v0, v1, p0, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const-string p0, "pref_camera_picturesize_back_key"

    goto :goto_0

    :pswitch_1
    const-string p0, "pref_camera_picturesize_front_key"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static c(Ljava/util/List;I)I
    .locals 5

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v1, 0x0

    const v2, 0x7fffffff

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkaf;

    iget v4, v3, Lkaf;->a:I

    iget v3, v3, Lkaf;->b:I

    mul-int v4, v4, v3

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v2, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    if-ge v3, v2, :cond_1

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_0

    :cond_2
    return v1
.end method
