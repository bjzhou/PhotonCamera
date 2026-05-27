.class final Lagc/Agc$proxyStringCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgo/Seq$Proxy;
.implements Lagc/StringCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagc/Agc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "proxyStringCollection"
.end annotation


# instance fields
.field private final refnum:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lagc/Agc$proxyStringCollection;->refnum:I

    invoke-static {p1, p0}, Lgo/Seq;->trackGoRef(ILgo/Seq$GoObject;)V

    return-void
.end method


# virtual methods
.method public native add(Ljava/lang/String;)Lagc/StringCollection;
.end method

.method public native get(J)Ljava/lang/String;
.end method

.method public final incRefnum()I
    .locals 1

    iget v0, p0, Lagc/Agc$proxyStringCollection;->refnum:I

    invoke-static {v0, p0}, Lgo/Seq;->incGoRef(ILgo/Seq$GoObject;)V

    iget v0, p0, Lagc/Agc$proxyStringCollection;->refnum:I

    return v0
.end method

.method public native size()J
.end method
