.class public final Lhor;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Ljuh;

.field final synthetic b:Lhpg;

.field final synthetic c:Lell;

.field final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lhos;


# direct methods
.method public constructor <init>(Lhos;Ljuh;Lhpg;Lell;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lhor;->e:Lhos;

    iput-object p2, p0, Lhor;->a:Ljuh;

    iput-object p3, p0, Lhor;->b:Lhpg;

    iput-object p4, p0, Lhor;->c:Lell;

    iput-object p5, p0, Lhor;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lhor;->e:Lhos;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhos;->g(Z)V

    return-void
.end method
