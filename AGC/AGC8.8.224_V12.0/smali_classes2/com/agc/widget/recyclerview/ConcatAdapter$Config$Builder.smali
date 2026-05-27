.class public final Lcom/agc/widget/recyclerview/ConcatAdapter$Config$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/ConcatAdapter$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIsolateViewTypes:Z

.field private mStableIdMode:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config;->DEFAULT:Lcom/agc/widget/recyclerview/ConcatAdapter$Config;

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config;->isolateViewTypes:Z

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$Builder;->mIsolateViewTypes:Z

    iget-object v0, v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config;->stableIdMode:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    iput-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$Builder;->mStableIdMode:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    return-void
.end method


# virtual methods
.method public build()Lcom/agc/widget/recyclerview/ConcatAdapter$Config;
    .locals 3

    new-instance v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config;

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$Builder;->mIsolateViewTypes:Z

    iget-object v2, p0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$Builder;->mStableIdMode:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    invoke-direct {v0, v1, v2}, Lcom/agc/widget/recyclerview/ConcatAdapter$Config;-><init>(ZLcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;)V

    return-object v0
.end method

.method public setIsolateViewTypes(Z)Lcom/agc/widget/recyclerview/ConcatAdapter$Config$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$Builder;->mIsolateViewTypes:Z

    return-object p0
.end method

.method public setStableIdMode(Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;)Lcom/agc/widget/recyclerview/ConcatAdapter$Config$Builder;
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$Builder;->mStableIdMode:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    return-object p0
.end method
