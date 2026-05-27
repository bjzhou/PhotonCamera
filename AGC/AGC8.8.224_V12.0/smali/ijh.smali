.class final Lijh;
.super Ljava/lang/Object;

# interfaces
.implements Ldaw;


# instance fields
.field final synthetic a:Lihg;

.field final synthetic b:Liji;


# direct methods
.method public constructor <init>(Liji;Lihg;)V
    .locals 0

    iput-object p1, p0, Lijh;->b:Liji;

    iput-object p2, p0, Lijh;->a:Lihg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lijh;->a:Lihg;

    iget-object v0, v0, Lihg;->c:Ljava/lang/Object;

    iget-object v1, p0, Lijh;->b:Liji;

    iget-object v1, v1, Liji;->a:Ljava/lang/Object;

    check-cast v1, Ljvd;

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->t(Ljvd;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lijh;->a:Lihg;

    iget-object v0, v0, Lihg;->c:Ljava/lang/Object;

    iget-object v1, p0, Lijh;->b:Liji;

    iget-object v1, v1, Liji;->a:Ljava/lang/Object;

    check-cast v1, Ljvd;

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->s(Ljvd;)V

    return-void
.end method
