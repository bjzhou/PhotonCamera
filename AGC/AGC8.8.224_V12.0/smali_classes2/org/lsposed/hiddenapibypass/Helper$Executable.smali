.class public final Lorg/lsposed/hiddenapibypass/Helper$Executable;
.super Lorg/lsposed/hiddenapibypass/Helper$AccessibleObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lsposed/hiddenapibypass/Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Executable"
.end annotation


# instance fields
.field private accessFlags:I

.field private artMethod:J

.field private declaringClass:Lorg/lsposed/hiddenapibypass/Helper$Class;

.field private declaringClassOfOverriddenMethod:Lorg/lsposed/hiddenapibypass/Helper$Class;

.field private parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lsposed/hiddenapibypass/Helper$AccessibleObject;-><init>()V

    return-void
.end method
