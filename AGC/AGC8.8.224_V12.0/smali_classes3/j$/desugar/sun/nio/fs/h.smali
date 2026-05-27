.class public final synthetic Lj$/desugar/sun/nio/fs/h;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/nio/file/B;


# instance fields
.field public final synthetic a:Ljava/util/regex/Pattern;


# direct methods
.method public synthetic constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/desugar/sun/nio/fs/h;->a:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final a(Lj$/nio/file/Path;)Z
    .locals 1

    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method
