.class final Ltg;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.compat.Camera2MetadataCache$getCameraMetadata$3"
    c = "Camera2MetadataCache.kt"
    d = "invokeSuspend"
    e = {}
.end annotation


# instance fields
.field final synthetic a:Lth;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lth;Ljava/lang/String;Loku;)V
    .locals 0

    iput-object p1, p0, Ltg;->a:Lth;

    iput-object p2, p0, Ltg;->b:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lopu;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Ltg;

    invoke-virtual {p1, p2}, Ltg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lolc;->a:Lolc;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Ltg;->a:Lth;

    iget-object v0, p0, Ltg;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lth;->a(Ljava/lang/String;)Lrd;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 2

    new-instance p1, Ltg;

    iget-object v0, p0, Ltg;->a:Lth;

    iget-object v1, p0, Ltg;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Ltg;-><init>(Lth;Ljava/lang/String;Loku;)V

    return-object p1
.end method
