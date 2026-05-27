.class public final synthetic Lkkx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic a:Lkpd;


# direct methods
.method public synthetic constructor <init>(Lkpd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkkx;->a:Lkpd;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 0

    iget-object p1, p0, Lkkx;->a:Lkpd;

    invoke-interface {p1}, Lkpd;->ci()V

    return-void
.end method
