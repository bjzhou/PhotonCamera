.class public final Lcfs;
.super Lipe;


# instance fields
.field final synthetic a:Lcgi;


# direct methods
.method public constructor <init>(Lcgi;)V
    .locals 0

    iput-object p1, p0, Lcfs;->a:Lcgi;

    invoke-direct {p0}, Lipe;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)Z
    .locals 0

    iget-object p1, p0, Lcfs;->a:Lcgi;

    invoke-interface {p1}, Lcgi;->e()V

    const/4 p1, 0x1

    return p1
.end method
