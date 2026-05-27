.class public final Lorg/lsposed/hiddenapibypass/Helper$MethodHandleImpl;
.super Lorg/lsposed/hiddenapibypass/Helper$MethodHandle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lsposed/hiddenapibypass/Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodHandleImpl"
.end annotation


# instance fields
.field private final info:Ljava/lang/invoke/MethodHandleInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lsposed/hiddenapibypass/Helper$MethodHandle;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lsposed/hiddenapibypass/Helper$MethodHandleImpl;->info:Ljava/lang/invoke/MethodHandleInfo;

    return-void
.end method
