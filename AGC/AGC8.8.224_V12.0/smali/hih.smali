.class public final Lhih;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;

.field private final h:Loiw;

.field private final i:Loiw;

.field private final j:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhih;->a:Loiw;

    iput-object p2, p0, Lhih;->b:Loiw;

    iput-object p3, p0, Lhih;->c:Loiw;

    iput-object p4, p0, Lhih;->d:Loiw;

    iput-object p5, p0, Lhih;->e:Loiw;

    iput-object p6, p0, Lhih;->f:Loiw;

    iput-object p7, p0, Lhih;->g:Loiw;

    iput-object p8, p0, Lhih;->h:Loiw;

    iput-object p9, p0, Lhih;->i:Loiw;

    iput-object p10, p0, Lhih;->j:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lhig;
    .locals 12

    iget-object v0, p0, Lhih;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lhih;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljuh;

    iget-object v0, p0, Lhih;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lell;

    iget-object v0, p0, Lhih;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lgeh;

    iget-object v0, p0, Lhih;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lgzm;

    iget-object v0, p0, Lhih;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lgzn;

    iget-object v0, p0, Lhih;->g:Loiw;

    check-cast v0, Lelt;

    invoke-virtual {v0}, Lelt;->a()Ljvs;

    move-result-object v8

    iget-object v0, p0, Lhih;->h:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljwb;

    iget-object v0, p0, Lhih;->i:Loiw;

    check-cast v0, Lcrn;

    invoke-virtual {v0}, Lcrn;->a()Lcrm;

    move-result-object v10

    iget-object v0, p0, Lhih;->j:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lhii;

    new-instance v0, Lhig;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lhig;-><init>(Landroid/content/Context;Ljuh;Lell;Lgeh;Lgzm;Lgzn;Ljvs;Ljwb;Lcrm;Lhii;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhih;->a()Lhig;

    move-result-object v0

    return-object v0
.end method
