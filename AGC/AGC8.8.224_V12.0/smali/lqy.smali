.class public final Llqy;
.super Lbw;

# interfaces
.implements Lamc;


# instance fields
.field public a:Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

.field private b:Landroid/widget/ArrayAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lamk;
    .locals 2

    new-instance v0, Llqw;

    invoke-virtual {p0}, Lbw;->getActivity()Lbz;

    move-result-object v1

    invoke-direct {v0, v1}, Llqw;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Llqy;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Llqy;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Llqy;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Llqy;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Llqy;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lbw;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lbw;->getActivity()Lbz;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    iput-object p1, p0, Llqy;->a:Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0e0075

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroy()V
    .locals 5

    invoke-super {p0}, Lbw;->onDestroy()V

    invoke-virtual {p0}, Lbw;->getActivity()Lbz;

    move-result-object v0

    invoke-static {v0}, Lamd;->a(Lakv;)Lamd;

    move-result-object v0

    iget-object v1, v0, Lamd;->a:Lamh;

    iget-boolean v1, v1, Lamh;->c:Z

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    invoke-static {v1}, Lamd;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyLoader in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " of 54321"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, v0, Lamd;->a:Lamh;

    const v2, 0xd431

    invoke-virtual {v1, v2}, Lamh;->a(I)Lame;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lame;->j()V

    iget-object v0, v0, Lamd;->a:Lamh;

    iget-object v0, v0, Lamh;->b:Lxg;

    iget-object v1, v0, Lxg;->b:[I

    iget v3, v0, Lxg;->d:I

    invoke-static {v1, v3, v2}, Lxi;->a([III)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, v0, Lxg;->c:[Ljava/lang/Object;

    aget-object v3, v2, v1

    sget-object v4, Lxh;->a:Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    aput-object v4, v2, v1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lxg;->a:Z

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "destroyLoader must be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onDetach()V
    .locals 1

    invoke-super {p0}, Lbw;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Llqy;->a:Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lbw;->getActivity()Lbz;

    move-result-object p2

    new-instance v0, Landroid/widget/ArrayAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f0e0072

    const v3, 0x7f0b01d4

    invoke-direct {v0, p2, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Llqy;->b:Landroid/widget/ArrayAdapter;

    invoke-static {p2}, Lamd;->a(Lakv;)Lamd;

    move-result-object p2

    const v0, 0xd431

    invoke-virtual {p2, v0, p0}, Lamd;->c(ILamc;)V

    const p2, 0x7f0b01d7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iget-object p2, p0, Llqy;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p2, Llqx;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Llqx;-><init>(Llqy;I)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
