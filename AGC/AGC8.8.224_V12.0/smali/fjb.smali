.class public final Lfjb;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfjb;->a:Loiw;

    iput-object p2, p0, Lfjb;->b:Loiw;

    iput-object p3, p0, Lfjb;->c:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;)Lfjb;
    .locals 1

    new-instance v0, Lfjb;

    invoke-direct {v0, p0, p1, p2}, Lfjb;-><init>(Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/media/MediaFormat;
    .locals 8

    iget-object v0, p0, Lfjb;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lfjb;->b:Loiw;

    check-cast v1, Lfjj;

    invoke-virtual {v1}, Lfjj;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lfjb;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkaf;

    const v3, 0xb71b00

    const v4, 0x3e6eeeef

    sget-object v1, Ldho;->aa:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v6

    sget-object v1, Ldhv;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    sget-object v1, Ldhv;->v:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lfwt;->h(Lkaf;IFLjava/lang/String;ZZ)Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfjb;->a()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method
