.class final Lvs;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.graph.CameraGraphImpl"
    c = "CameraGraphImpl.kt"
    d = "acquireSession"
    e = {
        0xa1
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Lvt;

.field c:I

.field d:Lvt;


# direct methods
.method public constructor <init>(Lvt;Loku;)V
    .locals 0

    iput-object p1, p0, Lvs;->b:Lvt;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lvs;->a:Ljava/lang/Object;

    iget p1, p0, Lvs;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lvs;->c:I

    iget-object p1, p0, Lvs;->b:Lvt;

    invoke-virtual {p1, p0}, Lvt;->b(Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
