.class synthetic Lcom/agc/widget/recyclerview/AgcRecyclerView$7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$agc$widget$recyclerview$AgcRecyclerView$Adapter$StateRestorationPolicy:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;->values()[Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$7;->$SwitchMap$com$agc$widget$recyclerview$AgcRecyclerView$Adapter$StateRestorationPolicy:[I

    :try_start_0
    sget-object v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$7;->$SwitchMap$com$agc$widget$recyclerview$AgcRecyclerView$Adapter$StateRestorationPolicy:[I

    sget-object v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
