.class public Lcom/agc/Application;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static lifecycle:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/Application$1;

    invoke-direct {v0}, Lcom/agc/Application$1;-><init>()V

    sput-object v0, Lcom/agc/Application;->lifecycle:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
