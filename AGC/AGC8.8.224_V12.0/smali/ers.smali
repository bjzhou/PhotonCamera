.class public final Lers;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lert;

.field final synthetic c:I


# direct methods
.method public constructor <init>(Lert;ILjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lers;->b:Lert;

    iput p2, p0, Lers;->c:I

    iput-object p3, p0, Lers;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic bn(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lers;->b:Lert;

    iget-object p1, p1, Lert;->s:Lhjz;

    invoke-virtual {p1}, Lhjz;->c()V

    iget-object p1, p0, Lers;->b:Lert;

    iget-object v0, p1, Lert;->t:Lfbz;

    iget v1, p0, Lers;->c:I

    iget-object p1, p1, Lert;->s:Lhjz;

    const/4 v2, 0x1

    iget-wide v3, p1, Lhkh;->m:J

    sget-object v5, Lhjy;->b:Lhjy;

    invoke-virtual {p1, v5}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lfbz;->aa(IIJJ)V

    iget-object p1, p0, Lers;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lers;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkad;

    invoke-interface {p1}, Lkad;->close()V

    :cond_0
    return-void
.end method
