.class public final Lgze;
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

    iput-object p1, p0, Lgze;->a:Loiw;

    iput-object p2, p0, Lgze;->b:Loiw;

    iput-object p3, p0, Lgze;->c:Loiw;

    iput-object p4, p0, Lgze;->d:Loiw;

    iput-object p5, p0, Lgze;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldqx;
    .locals 7

    iget-object v0, p0, Lgze;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/SharedPreferences;

    iget-object v0, p0, Lgze;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lgzm;

    iget-object v0, p0, Lgze;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljwb;

    iget-object v0, p0, Lgze;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljwb;

    iget-object v0, p0, Lgze;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljwb;

    new-instance v0, Ldqx;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldqx;-><init>(Landroid/content/SharedPreferences;Lgzm;Ljwb;Ljwb;Ljwb;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgze;->a()Ldqx;

    move-result-object v0

    return-object v0
.end method
