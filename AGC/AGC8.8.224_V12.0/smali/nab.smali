.class public final Lnab;
.super Lmta;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final transient header:Lmzz;

.field public final transient range:Lmux;

.field public final transient rootReference:Lnaa;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0, p1}, Lmta;-><init>(Ljava/util/Comparator;)V

    invoke-static {p1}, Lmux;->a(Ljava/util/Comparator;)Lmux;

    move-result-object p1

    iput-object p1, p0, Lnab;->range:Lmux;

    new-instance p1, Lmzz;

    invoke-direct {p1}, Lmzz;-><init>()V

    iput-object p1, p0, Lnab;->header:Lmzz;

    invoke-static {p1, p1}, Lnab;->v(Lmzz;Lmzz;)V

    new-instance p1, Lnaa;

    invoke-direct {p1}, Lnaa;-><init>()V

    iput-object p1, p0, Lnab;->rootReference:Lnaa;

    return-void
.end method

.method public constructor <init>(Lnaa;Lmux;Lmzz;)V
    .locals 1

    iget-object v0, p2, Lmux;->a:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lmta;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lnab;->rootReference:Lnaa;

    iput-object p2, p0, Lnab;->range:Lmux;

    iput-object p3, p0, Lnab;->header:Lmzz;

    return-void
.end method

.method private final A(I)J
    .locals 5

    iget-object v0, p0, Lnab;->rootReference:Lnaa;

    iget-object v0, v0, Lnaa;->a:Ljava/lang/Object;

    check-cast v0, Lmzz;

    invoke-static {p1, v0}, Lmjy;->o(ILmzz;)J

    move-result-wide v1

    iget-object v3, p0, Lnab;->range:Lmux;

    iget-boolean v3, v3, Lmux;->b:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, v0}, Lnab;->z(ILmzz;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lnab;->range:Lmux;

    iget-boolean v3, v3, Lmux;->d:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, v0}, Lnab;->y(ILmzz;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    :cond_1
    return-wide v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    const-class v1, Lmta;

    const-string v2, "comparator"

    invoke-static {v1, v2}, Lmjy;->J(Ljava/lang/Class;Ljava/lang/String;)Llyd;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Llyd;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v1, Lnab;

    const-string v2, "range"

    invoke-static {v1, v2}, Lmjy;->J(Ljava/lang/Class;Ljava/lang/String;)Llyd;

    move-result-object v2

    invoke-static {v0}, Lmux;->a(Ljava/util/Comparator;)Lmux;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Llyd;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "rootReference"

    invoke-static {v1, v0}, Lmjy;->J(Ljava/lang/Class;Ljava/lang/String;)Llyd;

    move-result-object v0

    new-instance v2, Lnaa;

    invoke-direct {v2}, Lnaa;-><init>()V

    invoke-virtual {v0, p0, v2}, Llyd;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lmzz;

    invoke-direct {v0}, Lmzz;-><init>()V

    const-string v2, "header"

    invoke-static {v1, v2}, Lmjy;->J(Ljava/lang/Class;Ljava/lang/String;)Llyd;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Llyd;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v0}, Lnab;->v(Lmzz;Lmzz;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    invoke-interface {p0, v2, v3}, Lmyb;->h(Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static t(Lmzz;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lmzz;->c:I

    return p0
.end method

.method public static v(Lmzz;Lmzz;)V
    .locals 0

    iput-object p1, p0, Lmzz;->h:Lmzz;

    iput-object p0, p1, Lmzz;->g:Lmzz;

    return-void
.end method

.method public static w(Lmzz;Lmzz;Lmzz;)V
    .locals 0

    invoke-static {p0, p1}, Lnab;->v(Lmzz;Lmzz;)V

    invoke-static {p1, p2}, Lnab;->v(Lmzz;Lmzz;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lmta;->p()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {p0}, Lmyb;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-interface {p0}, Lmyb;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmya;

    invoke-interface {v1}, Lmya;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v1}, Lmya;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final y(ILmzz;)J
    .locals 4

    if-nez p2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    iget-object v0, p0, Lmta;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lnab;->range:Lmux;

    iget-object v1, v1, Lmux;->e:Ljava/lang/Object;

    iget-object v2, p2, Lmzz;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object p2, p2, Lmzz;->f:Lmzz;

    invoke-direct {p0, p1, p2}, Lnab;->y(ILmzz;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lnab;->range:Lmux;

    iget v0, v0, Lmux;->g:I

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    iget-object p2, p2, Lmzz;->f:Lmzz;

    invoke-static {p1, p2}, Lmjy;->o(ILmzz;)J

    move-result-wide p1

    return-wide p1

    :pswitch_0
    invoke-static {p1, p2}, Lmjy;->n(ILmzz;)I

    move-result v0

    int-to-long v0, v0

    iget-object p2, p2, Lmzz;->f:Lmzz;

    invoke-static {p1, p2}, Lmjy;->o(ILmzz;)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0

    :cond_2
    iget-object v0, p2, Lmzz;->f:Lmzz;

    invoke-static {p1, v0}, Lmjy;->o(ILmzz;)J

    move-result-wide v0

    invoke-static {p1, p2}, Lmjy;->n(ILmzz;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object p2, p2, Lmzz;->e:Lmzz;

    invoke-direct {p0, p1, p2}, Lnab;->y(ILmzz;)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private final z(ILmzz;)J
    .locals 4

    if-nez p2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    iget-object v0, p0, Lmta;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lnab;->range:Lmux;

    iget-object v1, v1, Lmux;->c:Ljava/lang/Object;

    iget-object v2, p2, Lmzz;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object p2, p2, Lmzz;->e:Lmzz;

    invoke-direct {p0, p1, p2}, Lnab;->z(ILmzz;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lnab;->range:Lmux;

    iget v0, v0, Lmux;->f:I

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    iget-object p2, p2, Lmzz;->e:Lmzz;

    invoke-static {p1, p2}, Lmjy;->o(ILmzz;)J

    move-result-wide p1

    return-wide p1

    :pswitch_0
    invoke-static {p1, p2}, Lmjy;->n(ILmzz;)I

    move-result v0

    int-to-long v0, v0

    iget-object p2, p2, Lmzz;->e:Lmzz;

    invoke-static {p1, p2}, Lmjy;->o(ILmzz;)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0

    :cond_2
    iget-object v0, p2, Lmzz;->e:Lmzz;

    invoke-static {p1, v0}, Lmjy;->o(ILmzz;)J

    move-result-wide v0

    invoke-static {p1, p2}, Lmjy;->n(ILmzz;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object p2, p2, Lmzz;->f:Lmzz;

    invoke-direct {p0, p1, p2}, Lnab;->z(ILmzz;)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b()I
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lnab;->A(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnsy;->S(J)I

    move-result v0

    return v0
.end method

.method public final c()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lmzy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lmzy;-><init>(Lnab;I[B)V

    return-object v0
.end method

.method public final clear()V
    .locals 4

    iget-object v0, p0, Lnab;->range:Lmux;

    iget-boolean v1, v0, Lmux;->b:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lmux;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnab;->header:Lmzz;

    invoke-virtual {v0}, Lmzz;->g()Lmzz;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lnab;->header:Lmzz;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lmzz;->g()Lmzz;

    move-result-object v1

    const/4 v3, 0x0

    iput v3, v0, Lmzz;->b:I

    iput-object v2, v0, Lmzz;->e:Lmzz;

    iput-object v2, v0, Lmzz;->f:Lmzz;

    iput-object v2, v0, Lmzz;->g:Lmzz;

    iput-object v2, v0, Lmzz;->h:Lmzz;

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v1, v1}, Lnab;->v(Lmzz;Lmzz;)V

    iget-object v0, p0, Lnab;->rootReference:Lnaa;

    iput-object v2, v0, Lnaa;->a:Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {p0}, Lnab;->c()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Llyh;->O(Ljava/util/Iterator;)V

    return-void
.end method

.method public final cw(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnab;->rootReference:Lnaa;

    iget-object v1, v1, Lnaa;->a:Ljava/lang/Object;

    iget-object v2, p0, Lnab;->range:Lmux;

    invoke-virtual {v2, p1}, Lmux;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lmta;->comparator:Ljava/util/Comparator;

    check-cast v1, Lmzz;

    invoke-virtual {v1, v2, p1}, Lmzz;->a(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    return v0
.end method

.method public final d(Ljava/lang/Object;I)I
    .locals 5

    const-string v0, "occurrences"

    invoke-static {p2, v0}, Llkj;->v(ILjava/lang/String;)V

    iget-object v0, p0, Lnab;->rootReference:Lnaa;

    iget-object v0, v0, Lnaa;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lnab;->range:Lmux;

    invoke-virtual {v3, p1}, Lmux;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lmta;->comparator:Ljava/util/Comparator;

    move-object v4, v0

    check-cast v4, Lmzz;

    invoke-virtual {v4, v3, p1, p2, v1}, Lmzz;->f(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lmzz;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p0, Lnab;->rootReference:Lnaa;

    invoke-virtual {p2, v0, p1}, Lnaa;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    aget p1, v1, v2

    return p1

    :cond_0
    return v2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    return v2
.end method

.method public final h(Ljava/lang/Object;I)V
    .locals 4

    const-string v0, "occurrences"

    invoke-static {p2, v0}, Llkj;->v(ILjava/lang/String;)V

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lnab;->cw(Ljava/lang/Object;)I

    return-void

    :cond_0
    iget-object v0, p0, Lnab;->range:Lmux;

    invoke-virtual {v0, p1}, Lmux;->c(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lmoz;->e(Z)V

    iget-object v0, p0, Lnab;->rootReference:Lnaa;

    iget-object v0, v0, Lnaa;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmta;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    new-instance v0, Lmzz;

    invoke-direct {v0, p1, p2}, Lmzz;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p0, Lnab;->header:Lmzz;

    invoke-static {p1, v0, p1}, Lnab;->w(Lmzz;Lmzz;Lmzz;)V

    iget-object p1, p0, Lnab;->rootReference:Lnaa;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lnaa;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [I

    iget-object v2, p0, Lmta;->comparator:Ljava/util/Comparator;

    move-object v3, v0

    check-cast v3, Lmzz;

    invoke-virtual {v3, v2, p1, p2, v1}, Lmzz;->b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lmzz;

    move-result-object p1

    iget-object p2, p0, Lnab;->rootReference:Lnaa;

    invoke-virtual {p2, v0, p1}, Lnaa;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Ljava/lang/Object;I)Z
    .locals 6

    const-string v0, "newCount"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Llkj;->v(ILjava/lang/String;)V

    const-string v0, "oldCount"

    invoke-static {p2, v0}, Llkj;->v(ILjava/lang/String;)V

    iget-object v0, p0, Lnab;->range:Lmux;

    invoke-virtual {v0, p1}, Lmux;->c(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lmoz;->e(Z)V

    iget-object v0, p0, Lnab;->rootReference:Lnaa;

    iget-object v0, v0, Lnaa;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    new-array v3, v2, [I

    iget-object v4, p0, Lmta;->comparator:Ljava/util/Comparator;

    move-object v5, v0

    check-cast v5, Lmzz;

    invoke-virtual {v5, v4, p1, p2, v3}, Lmzz;->h(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lmzz;

    move-result-object p1

    iget-object v4, p0, Lnab;->rootReference:Lnaa;

    invoke-virtual {v4, v0, p1}, Lnaa;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    aget p1, v3, v1

    if-ne p1, p2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-static {p0}, Llyh;->q(Lmyb;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lmzy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmzy;-><init>(Lnab;I)V

    return-object v0
.end method

.method public final r(Ljava/lang/Object;I)Lmzi;
    .locals 12

    new-instance v0, Lnab;

    iget-object v1, p0, Lnab;->rootReference:Lnaa;

    iget-object v2, p0, Lnab;->range:Lmux;

    iget-object v4, p0, Lmta;->comparator:Ljava/util/Comparator;

    new-instance v11, Lmux;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, v11

    move-object v9, p1

    move v10, p2

    invoke-direct/range {v3 .. v10}, Lmux;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;IZLjava/lang/Object;I)V

    invoke-virtual {v2, v11}, Lmux;->b(Lmux;)Lmux;

    move-result-object p1

    iget-object p2, p0, Lnab;->header:Lmzz;

    invoke-direct {v0, v1, p1, p2}, Lnab;-><init>(Lnaa;Lmux;Lmzz;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;I)Lmzi;
    .locals 12

    new-instance v0, Lnab;

    iget-object v1, p0, Lnab;->rootReference:Lnaa;

    iget-object v2, p0, Lnab;->range:Lmux;

    iget-object v4, p0, Lmta;->comparator:Ljava/util/Comparator;

    new-instance v11, Lmux;

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v11

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v3 .. v10}, Lmux;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;IZLjava/lang/Object;I)V

    invoke-virtual {v2, v11}, Lmux;->b(Lmux;)Lmux;

    move-result-object p1

    iget-object p2, p0, Lnab;->header:Lmzz;

    invoke-direct {v0, v1, p1, p2}, Lnab;-><init>(Lnaa;Lmux;Lmzz;)V

    return-object v0
.end method

.method public final size()I
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnab;->A(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnsy;->S(J)I

    move-result v0

    return v0
.end method

.method public final u(Lmzz;)Lmya;
    .locals 1

    new-instance v0, Lmzx;

    invoke-direct {v0, p0, p1}, Lmzx;-><init>(Lnab;Lmzz;)V

    return-object v0
.end method

.method public final x(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "count"

    invoke-static {v0, v1}, Llkj;->v(ILjava/lang/String;)V

    iget-object v0, p0, Lnab;->range:Lmux;

    invoke-virtual {v0, p1}, Lmux;->c(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {v1}, Lmoz;->e(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lnab;->rootReference:Lnaa;

    iget-object v0, v0, Lnaa;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-array v1, v1, [I

    iget-object v2, p0, Lmta;->comparator:Ljava/util/Comparator;

    move-object v3, v0

    check-cast v3, Lmzz;

    invoke-virtual {v3, v2, p1, v1}, Lmzz;->i(Ljava/util/Comparator;Ljava/lang/Object;[I)Lmzz;

    move-result-object p1

    iget-object v1, p0, Lnab;->rootReference:Lnaa;

    invoke-virtual {v1, v0, p1}, Lnaa;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
