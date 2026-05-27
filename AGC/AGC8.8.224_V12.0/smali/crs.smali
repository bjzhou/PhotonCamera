.class public final Lcrs;
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

    iput-object p1, p0, Lcrs;->a:Loiw;

    iput-object p2, p0, Lcrs;->b:Loiw;

    iput-object p3, p0, Lcrs;->c:Loiw;

    iput-object p4, p0, Lcrs;->d:Loiw;

    iput-object p5, p0, Lcrs;->e:Loiw;

    iput-object p6, p0, Lcrs;->f:Loiw;

    iput-object p7, p0, Lcrs;->g:Loiw;

    iput-object p8, p0, Lcrs;->h:Loiw;

    iput-object p9, p0, Lcrs;->i:Loiw;

    iput-object p10, p0, Lcrs;->j:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcrr;
    .locals 11

    iget-object v0, p0, Lcrs;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcsa;

    iget-object v0, p0, Lcrs;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lccg;

    iget-object v0, p0, Lcrs;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lftu;

    iget-object v0, p0, Lcrs;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcfp;

    iget-object v0, p0, Lcrs;->e:Loiw;

    check-cast v0, Lcdb;

    invoke-virtual {v0}, Lcdb;->a()Lcda;

    move-result-object v6

    iget-object v0, p0, Lcrs;->f:Loiw;

    check-cast v0, Lccs;

    invoke-virtual {v0}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v0, p0, Lcrs;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ldkp;

    iget-object v0, p0, Lcrs;->h:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ldhi;

    iget-object v0, p0, Lcrs;->i:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbf;

    iget-object v0, p0, Lcrs;->j:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ldms;

    new-instance v0, Lcrr;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcrr;-><init>(Lcsa;Lccg;Lftu;Lcfp;Lcda;ZLdkp;Ldhi;Ldms;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcrs;->a()Lcrr;

    move-result-object v0

    return-object v0
.end method
