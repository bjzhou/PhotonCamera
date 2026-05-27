.class public final Lhzj;
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

    iput-object p1, p0, Lhzj;->a:Loiw;

    iput-object p2, p0, Lhzj;->b:Loiw;

    iput-object p3, p0, Lhzj;->c:Loiw;

    iput-object p4, p0, Lhzj;->d:Loiw;

    iput-object p5, p0, Lhzj;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llqh;
    .locals 7

    iget-object v0, p0, Lhzj;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lhzj;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lhrz;

    iget-object v4, p0, Lhzj;->c:Loiw;

    iget-object v0, p0, Lhzj;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v0, p0, Lhzj;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lgus;

    new-instance v0, Llqh;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Llqh;-><init>(Landroid/content/Context;Lhrz;Loiw;ZLgus;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhzj;->a()Llqh;

    move-result-object v0

    return-object v0
.end method
