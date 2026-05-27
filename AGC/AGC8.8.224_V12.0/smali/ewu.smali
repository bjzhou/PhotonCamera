.class public final Lewu;
.super Ljava/lang/Object;

# interfaces
.implements Lbnc;


# instance fields
.field public final synthetic a:Leww;


# direct methods
.method public constructor <init>(Leww;)V
    .locals 0

    iput-object p1, p0, Lewu;->a:Leww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 10

    iget-object v0, p0, Lewu;->a:Leww;

    const/4 v1, 0x0

    iput-boolean v1, v0, Leww;->r:Z

    iget-object v2, v0, Leww;->c:Lewd;

    iget-object v0, v0, Leww;->J:Lcvr;

    invoke-virtual {v0}, Lcvr;->F()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v3, p0, Lewu;->a:Leww;

    iget-object v4, v3, Leww;->q:Ldhi;

    iget-object v3, v3, Leww;->I:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v2, v0, v4, v3, v1}, Lewd;->a(Landroid/view/WindowManager;Ldhi;Landroidx/wear/ambient/AmbientMode$AmbientController;Z)Lbob;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lewu;->a:Leww;

    invoke-virtual {v0}, Leww;->g()V

    iget-object v0, p0, Lewu;->a:Leww;

    iput-boolean v1, v0, Leww;->s:Z

    iget-object v3, v0, Leww;->c:Lewd;

    iget-object v3, v3, Lewd;->b:Lbne;

    iget-object v0, v0, Leww;->H:Landroid/os/Handler;

    new-instance v4, Lfmw;

    invoke-direct {v4, p0, v2}, Lfmw;-><init>(Lewu;I)V

    invoke-virtual {v3, v0, v4}, Lbne;->r(Landroid/os/Handler;Lbnf;)V

    :cond_0
    iget-object v0, p0, Lewu;->a:Leww;

    iget-object v3, v0, Leww;->g:Lexs;

    invoke-virtual {v3}, Lexs;->f()[F

    move-result-object v3

    const/16 v4, 0x9

    new-array v5, v4, [F

    aget v6, v3, v1

    aput v6, v5, v1

    aget v6, v3, v2

    aput v6, v5, v2

    const/4 v6, 0x2

    aget v7, v3, v6

    aput v7, v5, v6

    const/4 v7, 0x3

    const/4 v8, 0x4

    aget v9, v3, v8

    aput v9, v5, v7

    const/4 v7, 0x5

    aget v9, v3, v7

    aput v9, v5, v8

    const/4 v8, 0x6

    aget v9, v3, v8

    aput v9, v5, v7

    const/16 v7, 0x8

    aget v9, v3, v7

    aput v9, v5, v8

    const/4 v8, 0x7

    aget v9, v3, v4

    aput v9, v5, v8

    const/16 v8, 0xa

    aget v3, v3, v8

    aput v3, v5, v7

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    const/4 v7, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget v8, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget v8, v5, v1

    add-float/2addr v7, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v3, v0, Leww;->o:Ljava/io/FileWriter;

    invoke-virtual {v3, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v0, v0, Leww;->o:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lewu;->a:Leww;

    iget-object v1, v0, Leww;->y:Landroid/os/Handler;

    new-instance v3, Levy;

    invoke-direct {v3, v0, p1, v6}, Levy;-><init>(Leww;[BI)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lewr;->a:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNumCapturedTargets()I

    move-result p1

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNumTotalTargets()I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lewu;->a:Leww;

    iget-object p1, p1, Leww;->b:Lewz;

    invoke-virtual {p1}, Lewz;->c()V

    iget-object p1, p0, Lewu;->a:Leww;

    iget-object p1, p1, Leww;->x:Lexz;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNumTotalTargets()I

    move-result p1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lewu;->a:Leww;

    iget-object p1, p1, Leww;->x:Lexz;

    invoke-interface {p1, v1}, Lexz;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lewu;->a:Leww;

    iget-object p1, p1, Leww;->w:Lexz;

    if-eqz p1, :cond_3

    invoke-interface {p1, v1}, Lexz;->a(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    iget-object p1, p0, Lewu;->a:Leww;

    iget-object p1, p1, Leww;->B:Lexz;

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Lexz;->a(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
