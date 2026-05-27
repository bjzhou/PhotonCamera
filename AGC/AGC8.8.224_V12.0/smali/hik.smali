.class public final Lhik;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhik;->a:Loiw;

    iput-object p2, p0, Lhik;->b:Loiw;

    iput-object p3, p0, Lhik;->c:Loiw;

    iput-object p4, p0, Lhik;->d:Loiw;

    iput-object p5, p0, Lhik;->e:Loiw;

    iput-object p6, p0, Lhik;->f:Loiw;

    iput-object p7, p0, Lhik;->g:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lhij;
    .locals 9

    iget-object v0, p0, Lhik;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lhik;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lgeh;

    iget-object v0, p0, Lhik;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljuh;

    iget-object v0, p0, Lhik;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lell;

    iget-object v0, p0, Lhik;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lgzm;

    iget-object v0, p0, Lhik;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lgzn;

    iget-object v0, p0, Lhik;->g:Loiw;

    check-cast v0, Lelt;

    invoke-virtual {v0}, Lelt;->a()Ljvs;

    move-result-object v8

    new-instance v0, Lhij;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lhij;-><init>(Landroid/content/Context;Lgeh;Ljuh;Lell;Lgzm;Lgzn;Ljvs;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhik;->a()Lhij;

    move-result-object v0

    return-object v0
.end method
