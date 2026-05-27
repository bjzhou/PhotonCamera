.class public final Lfut;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfut;->a:Loiw;

    iput-object p2, p0, Lfut;->b:Loiw;

    iput-object p3, p0, Lfut;->c:Loiw;

    iput-object p4, p0, Lfut;->d:Loiw;

    iput-object p5, p0, Lfut;->e:Loiw;

    iput-object p6, p0, Lfut;->f:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lfus;
    .locals 9

    iget-object v0, p0, Lfut;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkcs;

    iget-object v0, p0, Lfut;->b:Loiw;

    check-cast v0, Lfln;

    invoke-virtual {v0}, Lfln;->a()Lgxb;

    move-result-object v3

    iget-object v0, p0, Lfut;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lklx;

    iget-object v0, p0, Lfut;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ligx;

    iget-object v0, p0, Lfut;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ldhi;

    iget-object v0, p0, Lfut;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ldna;

    new-instance v0, Lfus;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lfus;-><init>(Lkcs;Lgxb;Lklx;Ligx;Ldhi;Ldna;[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfut;->a()Lfus;

    move-result-object v0

    return-object v0
.end method
