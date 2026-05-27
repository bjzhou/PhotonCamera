.class public final Lfqk;
.super Ljava/lang/Object;

# interfaces
.implements Lfpn;


# instance fields
.field private final a:Lfsr;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Ljvs;

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lfsr;IIIILjvs;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lfpm;->a:Lfpm;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfqk;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lfqk;->a:Lfsr;

    iput p2, p0, Lfqk;->b:I

    iput p3, p0, Lfqk;->c:I

    iput p4, p0, Lfqk;->d:I

    iput p5, p0, Lfqk;->e:I

    iput-object p6, p0, Lfqk;->f:Ljvs;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget-object v0, p0, Lfqk;->a:Lfsr;

    invoke-interface {v0}, Lfsr;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget v2, p0, Lfqk;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfqk;->a:Lfsr;

    invoke-interface {v0}, Lfsr;->a()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lfqk;->f:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lefz;->a:Lefz;

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lfqk;->c:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lfqk;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lfpm;->b:Lfpm;

    if-ne v0, v3, :cond_3

    iget v0, p0, Lfqk;->e:I

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Lfqk;->b:I

    sub-int/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    invoke-virtual {p0}, Lfqk;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final c(Lfpm;)V
    .locals 1

    iget-object v0, p0, Lfqk;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
