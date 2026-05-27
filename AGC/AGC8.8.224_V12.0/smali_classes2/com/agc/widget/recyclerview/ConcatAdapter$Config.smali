.class public final Lcom/agc/widget/recyclerview/ConcatAdapter$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/ConcatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;,
        Lcom/agc/widget/recyclerview/ConcatAdapter$Config$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/agc/widget/recyclerview/ConcatAdapter$Config;


# instance fields
.field public final isolateViewTypes:Z

.field public final stableIdMode:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config;

    sget-object v1, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/agc/widget/recyclerview/ConcatAdapter$Config;-><init>(ZLcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;)V

    sput-object v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config;->DEFAULT:Lcom/agc/widget/recyclerview/ConcatAdapter$Config;

    return-void
.end method

.method public constructor <init>(ZLcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config;->isolateViewTypes:Z

    iput-object p2, p0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config;->stableIdMode:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    return-void
.end method
