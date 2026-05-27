.class public final synthetic Llqx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljg;I)V
    .locals 0

    iput p2, p0, Llqx;->b:I

    iput-object p1, p0, Llqx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Llqy;I)V
    .locals 0

    iput p2, p0, Llqx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llqx;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmln;I)V
    .locals 0

    iput p2, p0, Llqx;->b:I

    iput-object p1, p0, Llqx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget v0, p0, Llqx;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    if-gez p3, :cond_3

    iget-object v0, p0, Llqx;->a:Ljava/lang/Object;

    check-cast v0, Lmln;

    iget-object v0, v0, Lmln;->a:Llg;

    invoke-virtual {v0}, Llg;->u()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, p1

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Llqx;->a:Ljava/lang/Object;

    check-cast p1, Ljg;

    iget-object p1, p1, Ljg;->d:Ljj;

    invoke-virtual {p1, p3}, Ljj;->setSelection(I)V

    iget-object p1, p0, Llqx;->a:Ljava/lang/Object;

    check-cast p1, Ljg;

    iget-object p1, p1, Ljg;->d:Ljj;

    invoke-virtual {p1}, Ljj;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Llqx;->a:Ljava/lang/Object;

    check-cast p1, Ljg;

    iget-object p4, p1, Ljg;->d:Ljj;

    iget-object p1, p1, Ljg;->b:Landroid/widget/ListAdapter;

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3, v0, v1}, Ljj;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    iget-object p1, p0, Llqx;->a:Ljava/lang/Object;

    check-cast p1, Llg;

    invoke-virtual {p1}, Llg;->k()V

    return-void

    :pswitch_1
    iget-object p2, p0, Llqx;->a:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llqv;

    check-cast p2, Llqy;

    iget-object p2, p2, Llqy;->a:Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    if-eqz p2, :cond_1

    const-class p3, Lcom/google/android/libraries/social/licenses/LicenseActivity;

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "license"

    invoke-virtual {p4, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p2, p4}, Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, v0, Llg;->e:Lkm;

    invoke-virtual {v0}, Lkm;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Llqx;->a:Ljava/lang/Object;

    check-cast v0, Lmln;

    invoke-virtual {v0}, Lmln;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Llqx;->a:Ljava/lang/Object;

    check-cast v1, Lmln;

    invoke-virtual {v1, v0}, Lmln;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Llqx;->a:Ljava/lang/Object;

    check-cast v0, Lmln;

    invoke-virtual {v0}, Lmln;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_8

    if-eqz p2, :cond_5

    if-gez p3, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    goto :goto_4

    :cond_5
    :goto_1
    iget-object p2, p0, Llqx;->a:Ljava/lang/Object;

    check-cast p2, Lmln;

    iget-object p2, p2, Lmln;->a:Llg;

    invoke-virtual {p2}, Llg;->u()Z

    move-result p3

    if-nez p3, :cond_6

    move-object p2, p1

    goto :goto_2

    :cond_6
    iget-object p1, p2, Llg;->e:Lkm;

    invoke-virtual {p1}, Lkm;->getSelectedView()Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    :goto_2
    iget-object p1, p0, Llqx;->a:Ljava/lang/Object;

    check-cast p1, Lmln;

    iget-object p1, p1, Lmln;->a:Llg;

    invoke-virtual {p1}, Llg;->o()I

    move-result p3

    iget-object p1, p0, Llqx;->a:Ljava/lang/Object;

    check-cast p1, Lmln;

    iget-object p1, p1, Lmln;->a:Llg;

    invoke-virtual {p1}, Llg;->u()Z

    move-result p4

    if-nez p4, :cond_7

    const-wide/high16 p4, -0x8000000000000000L

    goto :goto_3

    :cond_7
    iget-object p1, p1, Llg;->e:Lkm;

    invoke-virtual {p1}, Lkm;->getSelectedItemId()J

    move-result-wide p4

    :goto_3
    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    :goto_4
    iget-object p1, p0, Llqx;->a:Ljava/lang/Object;

    check-cast p1, Lmln;

    iget-object p1, p1, Lmln;->a:Llg;

    iget-object v2, p1, Llg;->e:Lkm;

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_8
    iget-object p1, p0, Llqx;->a:Ljava/lang/Object;

    check-cast p1, Lmln;

    iget-object p1, p1, Lmln;->a:Llg;

    invoke-virtual {p1}, Llg;->k()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
