.class public final Lmwq;
.super Lmvw;


# instance fields
.field private transient d:[Ljava/lang/Object;

.field private transient e:[Ljava/lang/Object;

.field private final f:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    invoke-direct {p0}, Lmvw;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lmwq;->f:Ljava/util/Comparator;

    const/4 p1, 0x4

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lmwq;->d:[Ljava/lang/Object;

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lmwq;->e:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lmws;
    .locals 7

    iget v0, p0, Lmwq;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v2, p0, Lmwq;->d:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lmwq;->f:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget v2, p0, Lmwq;->b:I

    new-array v2, v2, [Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lmwq;->f:Ljava/util/Comparator;

    iget-object v2, p0, Lmwq;->d:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lmwq;->e:[Ljava/lang/Object;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lmws;

    new-instance v4, Lmzb;

    invoke-static {v2}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Lmzb;-><init>(Lmvv;Ljava/util/Comparator;)V

    invoke-static {v1}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lmws;-><init>(Lmzb;Lmvv;)V

    return-object v3

    :pswitch_1
    iget-object v0, p0, Lmwq;->f:Ljava/util/Comparator;

    invoke-static {v0}, Lmws;->h(Ljava/util/Comparator;)Lmws;

    move-result-object v0

    return-object v0

    :goto_0
    iget v3, p0, Lmwq;->b:I

    if-ge v1, v3, :cond_2

    if-lez v1, :cond_1

    iget-object v3, p0, Lmwq;->f:Ljava/util/Comparator;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v0, v4

    aget-object v6, v0, v1

    invoke-interface {v3, v5, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keys required to be distinct but compared as equal: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_1
    iget-object v3, p0, Lmwq;->d:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lmwq;->f:Ljava/util/Comparator;

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    iget-object v4, p0, Lmwq;->e:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lmws;

    new-instance v3, Lmzb;

    invoke-static {v0}, Lmvv;->g([Ljava/lang/Object;)Lmvv;

    move-result-object v0

    iget-object v4, p0, Lmwq;->f:Ljava/util/Comparator;

    invoke-direct {v3, v0, v4}, Lmzb;-><init>(Lmvv;Ljava/util/Comparator;)V

    invoke-static {v2}, Lmvv;->g([Ljava/lang/Object;)Lmvv;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lmws;-><init>(Lmzb;Lmvv;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic b()Lmwa;
    .locals 1

    invoke-virtual {p0}, Lmwq;->a()Lmws;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lmwq;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lmwq;->d:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-static {v1, v0}, Lmvl;->a(II)I

    move-result v0

    iget-object v1, p0, Lmwq;->d:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmwq;->d:[Ljava/lang/Object;

    iget-object v1, p0, Lmwq;->e:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmwq;->e:[Ljava/lang/Object;

    :cond_0
    invoke-static {p1, p2}, Llkj;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lmwq;->d:[Ljava/lang/Object;

    iget v1, p0, Lmwq;->b:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lmwq;->e:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmwq;->b:I

    return-void
.end method

.method public final bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmwq;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
