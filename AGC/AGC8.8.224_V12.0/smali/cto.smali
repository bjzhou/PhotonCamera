.class public final Lcto;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcto;->a:Loiw;

    iput-object p2, p0, Lcto;->b:Loiw;

    iput-object p3, p0, Lcto;->c:Loiw;

    iput-object p4, p0, Lcto;->d:Loiw;

    iput-object p5, p0, Lcto;->e:Loiw;

    iput-object p6, p0, Lcto;->f:Loiw;

    iput-object p7, p0, Lcto;->g:Loiw;

    iput-object p8, p0, Lcto;->h:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldfa;
    .locals 10

    iget-object v0, p0, Lcto;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkoe;

    iget-object v0, p0, Lcto;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcsa;

    iget-object v0, p0, Lcto;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcvr;

    iget-object v0, p0, Lcto;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzn;

    iget-object v0, p0, Lcto;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzm;

    iget-object v0, p0, Lcto;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ldhi;

    iget-object v0, p0, Lcto;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lgto;

    iget-object v0, p0, Lcto;->h:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ldms;

    new-instance v0, Ldfa;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ldfa;-><init>(Lkoe;Lcsa;Lcvr;Ldhi;Lgto;Ldms;[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcto;->a()Ldfa;

    move-result-object v0

    return-object v0
.end method
