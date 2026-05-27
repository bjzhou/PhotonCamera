.class public final Lkkd;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkkd;->a:Loiw;

    iput-object p2, p0, Lkkd;->b:Loiw;

    iput-object p3, p0, Lkkd;->c:Loiw;

    iput-object p4, p0, Lkkd;->d:Loiw;

    iput-object p5, p0, Lkkd;->e:Loiw;

    iput-object p6, p0, Lkkd;->f:Loiw;

    iput-object p7, p0, Lkkd;->g:Loiw;

    iput-object p8, p0, Lkkd;->h:Loiw;

    iput-object p9, p0, Lkkd;->i:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llim;
    .locals 13

    iget-object v0, p0, Lkkd;->a:Loiw;

    check-cast v0, Lkge;

    invoke-virtual {v0}, Lkge;->a()Lkeq;

    move-result-object v2

    iget-object v0, p0, Lkkd;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lmbe;

    iget-object v0, p0, Lkkd;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljuf;

    iget-object v0, p0, Lkkd;->d:Loiw;

    check-cast v0, Lkao;

    invoke-virtual {v0}, Lkao;->a()Lkaq;

    move-result-object v5

    iget-object v0, p0, Lkkd;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkbc;

    iget-object v0, p0, Lkkd;->f:Loiw;

    check-cast v0, Lkid;

    invoke-virtual {v0}, Lkid;->a()Lloi;

    move-result-object v7

    iget-object v0, p0, Lkkd;->g:Loiw;

    check-cast v0, Ljzo;

    invoke-virtual {v0}, Ljzo;->a()Lklj;

    move-result-object v8

    iget-object v0, p0, Lkkd;->h:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkhx;

    iget-object v0, p0, Lkkd;->i:Loiw;

    check-cast v0, Lkge;

    invoke-virtual {v0}, Lkge;->a()Lkeq;

    new-instance v0, Llim;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Llim;-><init>(Lkeq;Lmbe;Ljuf;Lkaq;Lkbc;Lloi;Lklj;[B[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkkd;->a()Llim;

    move-result-object v0

    return-object v0
.end method
