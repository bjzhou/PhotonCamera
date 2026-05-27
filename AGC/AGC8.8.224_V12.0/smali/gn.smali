.class Lgn;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/content/Context;

.field public b:Lxf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgn;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final a(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, Ladd;

    if-eqz v0, :cond_2

    check-cast p1, Ladd;

    iget-object v0, p0, Lgn;->b:Lxf;

    if-nez v0, :cond_0

    new-instance v0, Lxf;

    invoke-direct {v0}, Lxf;-><init>()V

    iput-object v0, p0, Lgn;->b:Lxf;

    :cond_0
    iget-object v0, p0, Lgn;->b:Lxf;

    invoke-virtual {v0, p1}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    if-nez v0, :cond_1

    new-instance v0, Lhe;

    iget-object v1, p0, Lgn;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lhe;-><init>(Landroid/content/Context;Ladd;)V

    iget-object v1, p0, Lgn;->b:Lxf;

    invoke-virtual {v1, p1, v0}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method
