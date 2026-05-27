.class public final Lhas;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhas;->a:Loiw;

    iput-object p2, p0, Lhas;->b:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;)Lhas;
    .locals 1

    new-instance v0, Lhas;

    invoke-direct {v0, p0, p1}, Lhas;-><init>(Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lhar;
    .locals 3

    iget-object v0, p0, Lhas;->a:Loiw;

    check-cast v0, Ldwl;

    invoke-virtual {v0}, Ldwl;->a()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lhas;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgzn;

    new-instance v2, Lhar;

    invoke-direct {v2, v0, v1}, Lhar;-><init>(Landroid/content/res/Resources;Lgzn;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhas;->a()Lhar;

    move-result-object v0

    return-object v0
.end method
