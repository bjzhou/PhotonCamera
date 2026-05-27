.class public final Lgjm;
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

    iput-object p1, p0, Lgjm;->a:Loiw;

    iput-object p2, p0, Lgjm;->b:Loiw;

    iput-object p3, p0, Lgjm;->c:Loiw;

    iput-object p4, p0, Lgjm;->d:Loiw;

    iput-object p5, p0, Lgjm;->e:Loiw;

    iput-object p6, p0, Lgjm;->f:Loiw;

    iput-object p7, p0, Lgjm;->g:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lgjm;
    .locals 9

    new-instance v8, Lgjm;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lgjm;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v8
.end method


# virtual methods
.method public final b()Llij;
    .locals 9

    iget-object v0, p0, Lgjm;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lken;

    iget-object v0, p0, Lgjm;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkgq;

    iget-object v0, p0, Lgjm;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkfj;

    iget-object v0, p0, Lgjm;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lfyz;

    iget-object v0, p0, Lgjm;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lggm;

    iget-object v0, p0, Lgjm;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lkbc;

    iget-object v0, p0, Lgjm;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lghh;

    new-instance v0, Llij;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Llij;-><init>(Lken;Lkgq;Lkfj;Lfyz;Lggm;Lkbc;Lghh;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgjm;->b()Llij;

    move-result-object v0

    return-object v0
.end method
