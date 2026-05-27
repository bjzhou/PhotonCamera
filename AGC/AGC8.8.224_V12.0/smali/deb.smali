.class public final synthetic Ldeb;
.super Ljava/lang/Object;

# interfaces
.implements Lhdw;


# instance fields
.field public final synthetic a:Ldec;

.field public final synthetic b:Lddo;


# direct methods
.method public synthetic constructor <init>(Ldec;Lddo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldeb;->a:Ldec;

    iput-object p2, p0, Ldeb;->b:Lddo;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 5

    iget-object v0, p0, Ldeb;->a:Ldec;

    iget-object v1, p0, Ldeb;->b:Lddo;

    if-eqz p1, :cond_0

    iget-object v2, v0, Ldec;->o:Ljuh;

    new-instance v3, Lblx;

    const/16 v4, 0xb

    invoke-direct {v3, v0, p1, v1, v4}, Lblx;-><init>(Ldec;Landroid/graphics/Bitmap;Lddo;I)V

    invoke-virtual {v2, v3}, Ljuh;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
