.class public abstract Lmwn;
.super Lmvm;

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private transient a:Lmvv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmvm;-><init>()V

    return-void
.end method

.method static B(I)I
    .locals 6

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_0
    add-int/2addr v0, v0

    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    int-to-double v3, p0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    const-string v1, "collection too large"

    invoke-static {p0, v1}, Lmoz;->f(ZLjava/lang/Object;)V

    return v0
.end method

.method public static D()Lmwl;
    .locals 1

    new-instance v0, Lmwl;

    invoke-direct {v0}, Lmwl;-><init>()V

    return-object v0
.end method

.method public static varargs E(I[Ljava/lang/Object;)Lmwn;
    .locals 12

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lmwn;->B(I)I

    move-result v1

    new-array v5, v1, [Ljava/lang/Object;

    add-int/lit8 v6, v1, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :pswitch_0
    aget-object p0, p1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lmza;->a:Lmza;

    return-object p0

    :goto_0
    if-ge v2, p0, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3, v2}, Llyh;->l(Ljava/lang/Object;I)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Llyh;->Z(I)I

    move-result v9

    :goto_1
    and-int v10, v9, v6

    aget-object v11, v5, v10

    if-nez v11, :cond_0

    add-int/lit8 v9, v7, 0x1

    aput-object v3, p1, v7

    aput-object v3, v5, v10

    add-int/2addr v4, v8

    move v7, v9

    goto :goto_2

    :cond_0
    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-static {p1, v7, p0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    const/4 p0, 0x1

    if-ne v7, p0, :cond_3

    aget-object p0, p1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lmzg;

    invoke-direct {p1, p0}, Lmzg;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_3
    div-int/lit8 v1, v1, 0x2

    invoke-static {v7}, Lmwn;->B(I)I

    move-result p0

    if-ge p0, v1, :cond_4

    invoke-static {v7, p1}, Lmwn;->E(I[Ljava/lang/Object;)Lmwn;

    move-result-object p0

    return-object p0

    :cond_4
    array-length p0, p1

    invoke-static {v7, p0}, Lmwn;->N(II)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_5
    move-object v3, p1

    new-instance p0, Lmza;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lmza;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static F(Ljava/util/Collection;)Lmwn;
    .locals 2

    instance-of v0, p0, Lmwn;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedSet;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lmwn;

    invoke-virtual {v0}, Lmwn;->cA()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    invoke-static {v0, p0}, Lmwn;->E(I[Ljava/lang/Object;)Lmwn;

    move-result-object p0

    return-object p0
.end method

.method public static G([Ljava/lang/Object;)Lmwn;
    .locals 1

    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lmwn;->E(I[Ljava/lang/Object;)Lmwn;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lmza;->a:Lmza;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static H(Ljava/lang/Object;)Lmwn;
    .locals 1

    new-instance v0, Lmzg;

    invoke-direct {v0, p0}, Lmzg;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Lmwn;->E(I[Ljava/lang/Object;)Lmwn;

    move-result-object p0

    return-object p0
.end method

.method public static J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {v0, v1}, Lmwn;->E(I[Ljava/lang/Object;)Lmwn;

    move-result-object p0

    return-object p0
.end method

.method public static K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {v0, v1}, Lmwn;->E(I[Ljava/lang/Object;)Lmwn;

    move-result-object p0

    return-object p0
.end method

.method public static L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;
    .locals 3

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-static {v0, v1}, Lmwn;->E(I[Ljava/lang/Object;)Lmwn;

    move-result-object p0

    return-object p0
.end method

.method public static varargs M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lmwn;
    .locals 5
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "the total number of elements must fit in an int"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lmoz;->f(ZLjava/lang/Object;)V

    array-length v0, p6

    add-int/lit8 v2, v0, 0x6

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    aput-object p1, v3, v1

    const/4 p0, 0x2

    aput-object p2, v3, p0

    const/4 p0, 0x3

    aput-object p3, v3, p0

    const/4 p0, 0x4

    aput-object p4, v3, p0

    const/4 p0, 0x5

    aput-object p5, v3, p0

    const/4 p0, 0x6

    invoke-static {p6, v4, v3, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v3}, Lmwn;->E(I[Ljava/lang/Object;)Lmwn;

    move-result-object p0

    return-object p0
.end method

.method public static N(II)Z
    .locals 1

    shr-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public C()Lmvv;
    .locals 1

    invoke-virtual {p0}, Lmvm;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmvv;->g([Ljava/lang/Object;)Lmvv;

    move-result-object v0

    return-object v0
.end method

.method public abstract cz()Lnac;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmwn;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmwn;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lmwn;

    invoke-virtual {v1}, Lmwn;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmwn;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    if-ne p1, p0, :cond_3

    goto :goto_2

    :cond_3
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_5

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_5

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    return v0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :cond_5
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lmjy;->y(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmwn;->cz()Lnac;

    move-result-object v0

    return-object v0
.end method

.method public v()Lmvv;
    .locals 1

    iget-object v0, p0, Lmwn;->a:Lmvv;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmwn;->C()Lmvv;

    move-result-object v0

    iput-object v0, p0, Lmwn;->a:Lmvv;

    :cond_0
    return-object v0
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lmwm;

    invoke-virtual {p0}, Lmvm;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lmwm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
