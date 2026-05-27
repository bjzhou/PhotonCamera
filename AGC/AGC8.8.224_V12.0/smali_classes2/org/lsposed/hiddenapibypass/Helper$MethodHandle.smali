.class public Lorg/lsposed/hiddenapibypass/Helper$MethodHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lsposed/hiddenapibypass/Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodHandle"
.end annotation


# instance fields
.field protected final artFieldOrMethod:J

.field private cachedSpreadInvoker:Lorg/lsposed/hiddenapibypass/Helper$MethodHandle;

.field protected final handleKind:I

.field private nominalType:Ljava/lang/invoke/MethodType;

.field private final type:Ljava/lang/invoke/MethodType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lsposed/hiddenapibypass/Helper$MethodHandle;->type:Ljava/lang/invoke/MethodType;

    const/4 v0, 0x0

    iput v0, p0, Lorg/lsposed/hiddenapibypass/Helper$MethodHandle;->handleKind:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lsposed/hiddenapibypass/Helper$MethodHandle;->artFieldOrMethod:J

    return-void
.end method
