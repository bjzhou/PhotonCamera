.class public final Lfnw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfnv;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput p1, p0, Lfnw;->a:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const-class p0, Ljava/io/InputStream;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Lfnw;->a:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-class p0, Landroid/os/ParcelFileDescriptor;

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final synthetic b(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lfnw;->a:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/io/FileInputStream;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const/high16 p0, 0x10000000

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final synthetic c(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lfnw;->a:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method
