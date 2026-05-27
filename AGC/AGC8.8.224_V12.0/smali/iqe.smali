.class public final Liqe;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liqe;->a:Loiw;

    iput-object p2, p0, Liqe;->b:Loiw;

    iput-object p3, p0, Liqe;->c:Loiw;

    iput-object p4, p0, Liqe;->d:Loiw;

    iput-object p5, p0, Liqe;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Liqd;
    .locals 4

    iget-object v0, p0, Liqe;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    iget-object v0, p0, Liqe;->b:Loiw;

    check-cast v0, Lerc;

    invoke-virtual {v0}, Lerc;->a()Lfak;

    move-result-object v0

    iget-object v1, p0, Liqe;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljuh;

    iget-object v2, p0, Liqe;->d:Loiw;

    check-cast v2, Lkao;

    invoke-virtual {v2}, Lkao;->a()Lkaq;

    move-result-object v2

    iget-object v3, p0, Liqe;->e:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfbz;

    new-instance v3, Liqd;

    invoke-direct {v3, v0, v1, v2}, Liqd;-><init>(Lfak;Ljuh;Lkaq;)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Liqe;->a()Liqd;

    move-result-object v0

    return-object v0
.end method
