.class public Landroid/support/wearable/watchface/decomposition/GlyphDescriptor;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:S

.field public final b:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/wearable/watchface/decomposition/GlyphDescriptor$1;

    invoke-direct {v0}, Landroid/support/wearable/watchface/decomposition/GlyphDescriptor$1;-><init>()V

    sput-object v0, Landroid/support/wearable/watchface/decomposition/GlyphDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/support/wearable/watchface/decomposition/GlyphDescriptor;->a:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-char p1, p1

    iput-char p1, p0, Landroid/support/wearable/watchface/decomposition/GlyphDescriptor;->b:C

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-short p2, p0, Landroid/support/wearable/watchface/decomposition/GlyphDescriptor;->a:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-char p2, p0, Landroid/support/wearable/watchface/decomposition/GlyphDescriptor;->b:C

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
