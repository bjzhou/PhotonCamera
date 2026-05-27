.class public interface abstract Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/executor/GlideExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UncaughtThrowableStrategy"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

.field public static final IGNORE:Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

.field public static final LOG:Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

.field public static final THROW:Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy$1;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy$1;-><init>()V

    sput-object v0, Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->IGNORE:Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    new-instance v0, Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy$2;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy$2;-><init>()V

    sput-object v0, Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->LOG:Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    new-instance v1, Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy$3;

    invoke-direct {v1}, Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy$3;-><init>()V

    sput-object v1, Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->THROW:Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    sput-object v0, Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->DEFAULT:Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    return-void
.end method


# virtual methods
.method public abstract handle(Ljava/lang/Throwable;)V
.end method
