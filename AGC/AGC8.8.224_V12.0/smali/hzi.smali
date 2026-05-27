.class public final synthetic Lhzi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/smarts/SmartsChipView;Lhdu;Ljava/lang/Runnable;I)V
    .locals 0

    iput p4, p0, Lhzi;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhzi;->b:Ljava/lang/Object;

    iput-object p2, p0, Lhzi;->a:Ljava/lang/Object;

    iput-object p3, p0, Lhzi;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llqh;Lgus;Loiw;I[B)V
    .locals 0

    iput p4, p0, Lhzi;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhzi;->a:Ljava/lang/Object;

    iput-object p2, p0, Lhzi;->b:Ljava/lang/Object;

    iput-object p3, p0, Lhzi;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lhzi;->d:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lhzi;->b:Ljava/lang/Object;

    iget-object v0, p0, Lhzi;->a:Ljava/lang/Object;

    iget-object v1, p0, Lhzi;->c:Ljava/lang/Object;

    check-cast v0, Lhcr;

    iget-object v2, v0, Lhcr;->d:Lfbz;

    iget-object v0, v0, Lhcr;->a:Lhdz;

    iget-object v0, v0, Lhdz;->a:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-interface {v2, v3, v0}, Lfbz;->ae(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    check-cast p1, Lcom/google/android/apps/camera/smarts/SmartsChipView;

    iget-boolean v0, p1, Lcom/google/android/apps/camera/smarts/SmartsChipView;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lhzi;->a:Ljava/lang/Object;

    iget-object v0, p0, Lhzi;->b:Ljava/lang/Object;

    iget-object v1, p0, Lhzi;->c:Ljava/lang/Object;

    check-cast p1, Llqh;

    iget-boolean p1, p1, Llqh;->a:Z

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lgus;->e()V

    return-void

    :cond_0
    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldvk;

    invoke-interface {p1}, Ldvk;->a()Lnou;

    return-void

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
