.class public final Lhmp;
.super Lhdo;


# instance fields
.field public final b:Ljvs;

.field public final c:Lheb;

.field public d:Z

.field public final e:Ligo;

.field public final f:Ljew;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljvs;Ljew;Ligo;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Lhdo;-><init>()V

    iput-object p2, p0, Lhmp;->b:Ljvs;

    iput-object p3, p0, Lhmp;->f:Ljew;

    iput-object p4, p0, Lhmp;->e:Ligo;

    invoke-static {}, Lheb;->a()Lhea;

    move-result-object p2

    const p3, 0x7f140517

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lhea;->a:Ljava/lang/String;

    const p3, 0x7f080221

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p2, Lhea;->b:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lhea;->d(Z)V

    new-instance p3, Lhma;

    const/4 p4, 0x6

    invoke-direct {p3, p0, p4}, Lhma;-><init>(Lhmp;I)V

    iput-object p3, p2, Lhea;->c:Ljava/lang/Runnable;

    new-instance p3, Lhma;

    const/4 p4, 0x7

    invoke-direct {p3, p0, p4}, Lhma;-><init>(Lhmp;I)V

    iput-object p3, p2, Lhea;->f:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Lhea;->c(Z)V

    invoke-virtual {p2}, Lhea;->a()Lheb;

    move-result-object p1

    iput-object p1, p0, Lhmp;->c:Lheb;

    return-void
.end method
