.class public final Lhxv;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lnak;


# instance fields
.field public final a:Lhrz;

.field public b:Z

.field public final c:Ljew;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/hotshot/HotshotBottomSheetControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhxv;->d:Lnak;

    return-void
.end method

.method public constructor <init>(Lhrz;Ljew;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lhxv;->b:Z

    iput-object p1, p0, Lhxv;->a:Lhrz;

    iput-object p2, p0, Lhxv;->c:Ljew;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lhxv;->a:Lhrz;

    if-nez v0, :cond_0

    sget-object p1, Lhxv;->d:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "bottomSheetController is not ready"

    const/16 v1, 0xfb1

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    invoke-static {}, Ljuh;->a()V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e005d

    invoke-static {p1, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0b0193

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    const v2, 0x7f14021c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f14021b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhxv;->b:Z

    iget-object p1, p0, Lhxv;->a:Lhrz;

    const/16 v1, 0xf

    const v2, 0x7f140217

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lhrz;->m(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
