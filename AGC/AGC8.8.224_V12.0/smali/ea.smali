.class final Lea;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AlertController$RecycleListView;

.field final synthetic b:Lee;

.field final synthetic c:Leb;


# direct methods
.method public constructor <init>(Leb;Landroid/support/v7/app/AlertController$RecycleListView;Lee;)V
    .locals 0

    iput-object p1, p0, Lea;->c:Leb;

    iput-object p2, p0, Lea;->a:Landroid/support/v7/app/AlertController$RecycleListView;

    iput-object p3, p0, Lea;->b:Lee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lea;->c:Leb;

    iget-object p1, p1, Leb;->s:[Z

    if-eqz p1, :cond_0

    iget-object p2, p0, Lea;->a:Landroid/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {p2, p3}, Landroid/support/v7/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    :cond_0
    iget-object p1, p0, Lea;->c:Leb;

    iget-object p1, p1, Leb;->w:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lea;->b:Lee;

    iget-object p2, p2, Lee;->b:Lff;

    iget-object p4, p0, Lea;->a:Landroid/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {p4, p3}, Landroid/support/v7/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result p4

    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
