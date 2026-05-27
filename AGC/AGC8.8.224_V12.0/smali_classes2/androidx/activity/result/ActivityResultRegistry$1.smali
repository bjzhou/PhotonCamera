.class public Landroidx/activity/result/ActivityResultRegistry$1;
.super Ljava/lang/Object;

# interfaces
.implements Lakt;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lpw;

.field final synthetic c:Lqe;

.field final synthetic d:Lqa;


# direct methods
.method public constructor <init>(Lqa;Ljava/lang/String;Lpw;Lqe;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lqa;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Lpw;

    iput-object p4, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Lqe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lakv;Lakq;)V
    .locals 3

    sget-object p1, Lakq;->ON_START:Lakq;

    invoke-virtual {p1, p2}, Lakq;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lqa;

    iget-object p1, p1, Lqa;->f:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    new-instance v0, Laie;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Lpw;

    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Lqe;

    invoke-direct {v0, v1, v2}, Laie;-><init>(Lpw;Lqe;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lqa;

    iget-object p1, p1, Lqa;->g:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lqa;

    iget-object p1, p1, Lqa;->g:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lqa;

    iget-object p2, p2, Lqa;->g:Ljava/util/Map;

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Lpw;

    invoke-interface {p2, p1}, Lpw;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lqa;

    iget-object p1, p1, Lqa;->h:Landroid/os/Bundle;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lpv;

    if-eqz p1, :cond_3

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lqa;

    iget-object p2, p2, Lqa;->h:Landroid/os/Bundle;

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Lpw;

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Lqe;

    iget v1, p1, Lpv;->a:I

    iget-object p1, p1, Lpv;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lqe;->a(ILandroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lpw;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p1, Lakq;->ON_STOP:Lakq;

    invoke-virtual {p1, p2}, Lakq;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lqa;

    iget-object p1, p1, Lqa;->f:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    sget-object p1, Lakq;->ON_DESTROY:Lakq;

    invoke-virtual {p1, p2}, Lakq;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lqa;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lqa;->d(Ljava/lang/String;)V

    return-void

    :cond_3
    return-void
.end method
