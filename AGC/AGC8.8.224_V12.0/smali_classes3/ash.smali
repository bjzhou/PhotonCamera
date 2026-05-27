.class final Lash;
.super Lasg;


# instance fields
.field final synthetic a:Lwy;

.field final synthetic b:Lasi;


# direct methods
.method public constructor <init>(Lasi;Lwy;)V
    .locals 0

    iput-object p1, p0, Lash;->b:Lasi;

    iput-object p2, p0, Lash;->a:Lwy;

    invoke-direct {p0}, Lasg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lasf;)V
    .locals 2

    iget-object v0, p0, Lash;->a:Lwy;

    iget-object v1, p0, Lash;->b:Lasi;

    iget-object v1, v1, Lasi;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lasf;->y(Lase;)V

    return-void
.end method
