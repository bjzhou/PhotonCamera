.class public Lcom/agc/glide/request/transition/DrawableCrossFadeFactory$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/request/transition/DrawableCrossFadeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_DURATION_MS:I = 0x12c


# instance fields
.field private final durationMillis:I

.field private isCrossFadeEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/agc/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/agc/glide/request/transition/DrawableCrossFadeFactory$Builder;->durationMillis:I

    return-void
.end method


# virtual methods
.method public build()Lcom/agc/glide/request/transition/DrawableCrossFadeFactory;
    .locals 3

    new-instance v0, Lcom/agc/glide/request/transition/DrawableCrossFadeFactory;

    iget v1, p0, Lcom/agc/glide/request/transition/DrawableCrossFadeFactory$Builder;->durationMillis:I

    iget-boolean v2, p0, Lcom/agc/glide/request/transition/DrawableCrossFadeFactory$Builder;->isCrossFadeEnabled:Z

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/request/transition/DrawableCrossFadeFactory;-><init>(IZ)V

    return-object v0
.end method

.method public setCrossFadeEnabled(Z)Lcom/agc/glide/request/transition/DrawableCrossFadeFactory$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/agc/glide/request/transition/DrawableCrossFadeFactory$Builder;->isCrossFadeEnabled:Z

    return-object p0
.end method
