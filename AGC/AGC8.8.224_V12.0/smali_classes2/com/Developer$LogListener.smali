.class public final Lcom/Developer$LogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Developer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogListener"
.end annotation


# instance fields
.field public final controller:Ljava/lang/Object;

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/Developer$LogListener;->type:I

    iput-object p1, p0, Lcom/Developer$LogListener;->controller:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    iget p1, p0, Lcom/Developer$LogListener;->type:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Lcom/Developer;->gcaConfig:Ldit;

    invoke-static {p1}, Lcom/Developer;->logAllConfigurations(Ldit;)V

    const/4 p1, 0x1

    return p1
.end method
