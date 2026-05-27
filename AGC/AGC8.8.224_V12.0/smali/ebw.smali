.class public final Lebw;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# instance fields
.field private final a:Lmqp;

.field private final b:Lika;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Lebl;


# direct methods
.method public constructor <init>(Lebi;Lmqp;Lika;Lebl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lebw;->a:Lmqp;

    iput-object p3, p0, Lebw;->b:Lika;

    iget p2, p1, Lebi;->b:I

    iput p2, p0, Lebw;->e:I

    iput-object p4, p0, Lebw;->f:Lebl;

    iget p3, p1, Lebi;->d:I

    sub-int p3, p2, p3

    iput p3, p0, Lebw;->c:I

    iget p1, p1, Lebi;->e:I

    sub-int/2addr p2, p1

    iput p2, p0, Lebw;->d:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lebw;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lebw;->b:Lika;

    sget-object v1, Lika;->l:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lebw;->b:Lika;

    sget-object v1, Lika;->m:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lebw;->f:Lebl;

    iget-object v0, v0, Lebl;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lebw;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsr;

    invoke-interface {v0}, Lfsr;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lebw;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lebw;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsr;

    invoke-interface {v0}, Lfsr;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lebw;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    iget v0, p0, Lebw;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_3
    iget v0, p0, Lebw;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    iget v0, p0, Lebw;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
