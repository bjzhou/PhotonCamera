.class public final Lcup;
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

    iput-object p1, p0, Lcup;->a:Loiw;

    iput-object p2, p0, Lcup;->b:Loiw;

    iput-object p3, p0, Lcup;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcuo;
    .locals 4

    iget-object v0, p0, Lcup;->a:Loiw;

    check-cast v0, Lelo;

    invoke-virtual {v0}, Lelo;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcup;->b:Loiw;

    check-cast v1, Lema;

    invoke-virtual {v1}, Lema;->a()Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcup;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgyd;

    new-instance v3, Lcuo;

    invoke-direct {v3, v0, v1, v2}, Lcuo;-><init>(Landroid/app/Activity;Landroid/media/AudioManager;Lgyd;)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcup;->a()Lcuo;

    move-result-object v0

    return-object v0
.end method
