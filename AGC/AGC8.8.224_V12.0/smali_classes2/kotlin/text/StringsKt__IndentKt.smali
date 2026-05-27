.class Lkotlin/text/StringsKt__IndentKt;
.super Lkotlin/text/StringsKt__AppendableKt;
.source "Indent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,121:1\n111#1,2:123\n113#1,4:138\n118#1,2:151\n111#1,2:160\n113#1,4:175\n118#1,2:182\n1#2:122\n1#2:148\n1#2:179\n1#2:203\n1569#3,11:125\n1860#3,2:136\n1862#3:149\n1580#3:150\n766#3:153\n857#3,2:154\n1549#3:156\n1620#3,3:157\n1569#3,11:162\n1860#3,2:173\n1862#3:180\n1580#3:181\n1569#3,11:190\n1860#3,2:201\n1862#3:204\n1580#3:205\n151#4,6:142\n151#4,6:184\n*S KotlinDebug\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n*L\n37#1:123,2\n37#1:138,4\n37#1:151,2\n76#1:160,2\n76#1:175,4\n76#1:182,2\n37#1:148\n76#1:179\n112#1:203\n37#1:125,11\n37#1:136,2\n37#1:149\n37#1:150\n72#1:153\n72#1:154,2\n73#1:156\n73#1:157,3\n76#1:162,11\n76#1:173,2\n76#1:180\n76#1:181\n112#1:190,11\n112#1:201,2\n112#1:204\n112#1:205\n38#1:142,6\n99#1:184,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u000b\u001a!\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0007\u001a\u0014\u0010\u0008\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\t\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0082\u0008\u00a2\u0006\u0002\u0008\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u001a\u001e\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u001a\n\u0010\u0013\u001a\u00020\u0002*\u00020\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "getIndentFunction",
        "Lkotlin/Function1;",
        "",
        "indent",
        "getIndentFunction$StringsKt__IndentKt",
        "indentWidth",
        "",
        "indentWidth$StringsKt__IndentKt",
        "prependIndent",
        "reindent",
        "",
        "resultSizeEstimate",
        "indentAddFunction",
        "indentCutFunction",
        "reindent$StringsKt__IndentKt",
        "replaceIndent",
        "newIndent",
        "replaceIndentByMargin",
        "marginPrefix",
        "trimIndent",
        "trimMargin",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x31
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/text/StringsKt__AppendableKt;-><init>()V

    return-void
.end method

.method private static final getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    nop

    .line 102
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;->INSTANCE:Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_1

    .line 103
    :cond_1
    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    invoke-direct {v0, p0}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 104
    :goto_1
    return-object v0
.end method

.method private static final indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I
    .locals 8
    .param p0, "$this$indentWidth"    # Ljava/lang/String;

    .line 99
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 184
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    .line 185
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .local v5, "it":C
    const/4 v6, 0x0

    .line 99
    .local v6, "$i$a$-indexOfFirst-StringsKt__IndentKt$indentWidth$1":I
    invoke-static {v5}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v7

    .end local v5    # "it":C
    .end local v6    # "$i$a$-indexOfFirst-StringsKt__IndentKt$indentWidth$1":I
    xor-int/lit8 v5, v7, 0x1

    if-eqz v5, :cond_0

    .line 186
    goto :goto_1

    .line 184
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v2    # "index$iv":I
    :cond_1
    move v2, v4

    .line 99
    .end local v0    # "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    .end local v1    # "$i$f$indexOfFirst":I
    :goto_1
    move v0, v2

    .line 122
    .local v0, "it":I
    const/4 v1, 0x0

    .line 99
    .local v1, "$i$a$-let-StringsKt__IndentKt$indentWidth$2":I
    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v2

    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-StringsKt__IndentKt$indentWidth$2":I
    :cond_2
    return v0
.end method

.method public static final prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "$this$prependIndent"    # Ljava/lang/String;
    .param p1, "indent"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 86
    new-instance v1, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;

    invoke-direct {v1, p1}, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;-><init>(Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 97
    const-string v0, "\n"

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic prependIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 84
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "    "

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final reindent$StringsKt__IndentKt(Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 21
    .param p0, "$this$reindent"    # Ljava/util/List;
    .param p1, "resultSizeEstimate"    # I
    .param p2, "indentAddFunction"    # Lkotlin/jvm/functions/Function1;
    .param p3, "indentCutFunction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    .local v0, "$i$f$reindent":I
    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    .line 112
    .local v1, "lastIndex":I
    move-object/from16 v2, p0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$mapIndexedNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 190
    .local v3, "$i$f$mapIndexedNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapIndexedNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 200
    .local v6, "$i$f$mapIndexedNotNullTo":I
    move-object v7, v5

    .local v7, "$this$forEachIndexed$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 201
    .local v8, "$i$f$forEachIndexed":I
    const/4 v9, 0x0

    .line 202
    .local v9, "index$iv$iv$iv":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "item$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "index$iv$iv$iv":I
    .local v12, "index$iv$iv$iv":I
    if-gez v9, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .local v9, "index$iv$iv":I
    :cond_0
    move-object v13, v11

    .local v13, "element$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 200
    .local v14, "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv":I
    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    .local v15, "value":Ljava/lang/String;
    move/from16 v16, v9

    .local v16, "index":I
    move/from16 v17, v16

    .end local v16    # "index":I
    .local v17, "index":I
    const/16 v16, 0x0

    .line 113
    .local v16, "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1":I
    move/from16 v18, v0

    move/from16 v0, v17

    .end local v17    # "index":I
    .local v0, "index":I
    .local v18, "$i$f$reindent":I
    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    move-object/from16 v17, v15

    check-cast v17, Ljava/lang/CharSequence;

    invoke-static/range {v17 .. v17}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 114
    const/16 v17, 0x0

    move/from16 v19, v1

    move-object/from16 v1, p2

    move-object/from16 v20, v17

    move/from16 v17, v0

    move-object/from16 v0, v20

    goto :goto_2

    .line 116
    :cond_2
    move/from16 v17, v0

    move-object/from16 v0, p3

    .end local v0    # "index":I
    .restart local v17    # "index":I
    invoke-interface {v0, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    move/from16 v19, v1

    move-object/from16 v1, p2

    .end local v1    # "lastIndex":I
    .local v19, "lastIndex":I
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_1

    .end local v19    # "lastIndex":I
    .restart local v1    # "lastIndex":I
    :cond_3
    move/from16 v19, v1

    move-object/from16 v1, p2

    .end local v1    # "lastIndex":I
    .restart local v19    # "lastIndex":I
    :goto_1
    move-object v0, v15

    .line 113
    :cond_4
    :goto_2
    nop

    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1":I
    .end local v17    # "index":I
    if-eqz v0, :cond_5

    .line 203
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 200
    .local v15, "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv":I
    goto :goto_3

    :cond_5
    nop

    .line 202
    .end local v9    # "index$iv$iv":I
    .end local v11    # "item$iv$iv$iv":Ljava/lang/Object;
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv":I
    :goto_3
    move v9, v12

    move/from16 v0, v18

    move/from16 v1, v19

    goto :goto_0

    .line 204
    .end local v12    # "index$iv$iv$iv":I
    .end local v18    # "$i$f$reindent":I
    .end local v19    # "lastIndex":I
    .local v0, "$i$f$reindent":I
    .restart local v1    # "lastIndex":I
    .local v9, "index$iv$iv$iv":I
    :cond_6
    move/from16 v18, v0

    .line 205
    .end local v0    # "$i$f$reindent":I
    .end local v7    # "$this$forEachIndexed$iv$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEachIndexed":I
    .end local v9    # "index$iv$iv$iv":I
    .restart local v18    # "$i$f$reindent":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapIndexedNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapIndexedNotNullTo":I
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 190
    nop

    .end local v2    # "$this$mapIndexedNotNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapIndexedNotNull":I
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v0

    check-cast v5, Ljava/lang/Appendable;

    const-string v0, "\n"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7c

    const/4 v13, 0x0

    invoke-static/range {v4 .. v13}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    return-object v0
.end method

.method public static final replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 27
    .param p0, "$this$replaceIndent"    # Ljava/lang/String;
    .param p1, "newIndent"    # Ljava/lang/String;

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newIndent"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "lines":Ljava/util/List;
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .line 72
    nop

    .local v3, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 153
    .local v4, "$i$f$filter":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 154
    .local v7, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .local v10, "p0":Ljava/lang/String;
    const/4 v11, 0x0

    .line 72
    .local v11, "$i$a$-filter-StringsKt__IndentKt$replaceIndent$minCommonIndent$1":I
    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    .end local v10    # "p0":Ljava/lang/String;
    .end local v11    # "$i$a$-filter-StringsKt__IndentKt$replaceIndent$minCommonIndent$1":I
    xor-int/lit8 v10, v12, 0x1

    if-eqz v10, :cond_0

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filterTo":I
    check-cast v5, Ljava/util/List;

    .line 153
    nop

    .line 72
    .end local v3    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filter":I
    check-cast v5, Ljava/lang/Iterable;

    .line 73
    move-object v3, v5

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 156
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .restart local v5    # "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 157
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 158
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .restart local v10    # "p0":Ljava/lang/String;
    const/4 v11, 0x0

    .line 73
    .local v11, "$i$a$-map-StringsKt__IndentKt$replaceIndent$minCommonIndent$2":I
    invoke-static {v10}, Lkotlin/text/StringsKt__IndentKt;->indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I

    move-result v10

    .end local v10    # "p0":Ljava/lang/String;
    .end local v11    # "$i$a$-map-StringsKt__IndentKt$replaceIndent$minCommonIndent$2":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    check-cast v5, Ljava/util/List;

    .line 156
    nop

    .line 73
    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    check-cast v5, Ljava/lang/Iterable;

    .line 74
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 71
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    .line 74
    :cond_3
    const/4 v3, 0x0

    .line 71
    :goto_2
    nop

    .line 76
    .local v3, "minCommonIndent":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .local v4, "resultSizeEstimate$iv":I
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .local v5, "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    move-object v6, v1

    .local v6, "$this$reindent$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 160
    .local v7, "$i$f$reindent":I
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    .line 161
    .local v8, "lastIndex$iv":I
    move-object v9, v6

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$mapIndexedNotNull$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 162
    .local v10, "$i$f$mapIndexedNotNull":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/Collection;

    .local v11, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v12, v9

    .local v12, "$this$mapIndexedNotNullTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 172
    .local v13, "$i$f$mapIndexedNotNullTo":I
    move-object v14, v12

    .local v14, "$this$forEachIndexed$iv$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 173
    .local v15, "$i$f$forEachIndexed":I
    const/16 v16, 0x0

    .line 174
    .local v16, "index$iv$iv$iv$iv":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .local v18, "item$iv$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v19, v16, 0x1

    .end local v16    # "index$iv$iv$iv$iv":I
    .local v19, "index$iv$iv$iv$iv":I
    if-gez v16, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .local v16, "index$iv$iv$iv":I
    :cond_4
    move-object/from16 v20, v18

    .local v20, "element$iv$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 172
    .local v21, "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv$iv":I
    move-object/from16 v22, v20

    check-cast v22, Ljava/lang/String;

    .local v22, "value$iv":Ljava/lang/String;
    move/from16 v23, v16

    .local v23, "index$iv":I
    const/16 v24, 0x0

    .line 175
    .local v24, "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1$iv":I
    move/from16 v0, v23

    .end local v23    # "index$iv":I
    .local v0, "index$iv":I
    if-eqz v0, :cond_5

    if-ne v0, v8, :cond_6

    :cond_5
    move-object/from16 v23, v22

    check-cast v23, Ljava/lang/CharSequence;

    invoke-static/range {v23 .. v23}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 176
    const/16 v23, 0x0

    move/from16 v26, v0

    goto :goto_4

    .line 178
    :cond_6
    move-object/from16 v23, v22

    .local v23, "line":Ljava/lang/String;
    const/16 v25, 0x0

    .line 76
    .local v25, "$i$a$-reindent-StringsKt__IndentKt$replaceIndent$1":I
    move/from16 v26, v0

    move-object/from16 v0, v23

    .end local v23    # "line":Ljava/lang/String;
    .local v0, "line":Ljava/lang/String;
    .local v26, "index$iv":I
    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "line":Ljava/lang/String;
    .end local v25    # "$i$a$-reindent-StringsKt__IndentKt$replaceIndent$1":I
    if-eqz v0, :cond_7

    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    if-nez v23, :cond_8

    :cond_7
    move-object/from16 v23, v22

    .line 175
    :cond_8
    :goto_4
    nop

    .end local v22    # "value$iv":Ljava/lang/String;
    .end local v24    # "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1$iv":I
    .end local v26    # "index$iv":I
    if-eqz v23, :cond_9

    move-object/from16 v0, v23

    .line 179
    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 172
    .local v22, "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv$iv":I
    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv$iv":I
    goto :goto_5

    :cond_9
    nop

    .line 174
    .end local v16    # "index$iv$iv$iv":I
    .end local v18    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v20    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv$iv":I
    :goto_5
    move-object/from16 v0, p0

    move/from16 v16, v19

    goto :goto_3

    .line 180
    .end local v19    # "index$iv$iv$iv$iv":I
    .local v16, "index$iv$iv$iv$iv":I
    :cond_a
    nop

    .line 181
    .end local v14    # "$this$forEachIndexed$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$forEachIndexed":I
    .end local v16    # "index$iv$iv$iv$iv":I
    nop

    .end local v11    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v12    # "$this$mapIndexedNotNullTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$mapIndexedNotNullTo":I
    move-object v0, v11

    check-cast v0, Ljava/util/List;

    .line 162
    nop

    .end local v9    # "$this$mapIndexedNotNull$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$mapIndexedNotNull":I
    move-object v11, v0

    check-cast v11, Ljava/lang/Iterable;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v12, v0

    check-cast v12, Ljava/lang/Appendable;

    const-string v0, "\n"

    move-object v13, v0

    check-cast v13, Ljava/lang/CharSequence;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7c

    const/16 v20, 0x0

    invoke-static/range {v11 .. v20}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    nop

    .line 76
    .end local v4    # "resultSizeEstimate$iv":I
    .end local v5    # "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    .end local v6    # "$this$reindent$iv":Ljava/util/List;
    .end local v7    # "$i$f$reindent":I
    .end local v8    # "lastIndex$iv":I
    return-object v0
.end method

.method public static synthetic replaceIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 68
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 36
    .param p0, "$this$replaceIndentByMargin"    # Ljava/lang/String;
    .param p1, "newIndent"    # Ljava/lang/String;
    .param p2, "marginPrefix"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newIndent"

    move-object/from16 v8, p1

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "marginPrefix"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v1, v7

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    .line 35
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v9

    .line 37
    .local v9, "lines":Ljava/util/List;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    add-int v10, v1, v2

    .local v10, "resultSizeEstimate$iv":I
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v11

    .local v11, "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    move-object v12, v9

    .local v12, "$this$reindent$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 123
    .local v13, "$i$f$reindent":I
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v14

    .line 124
    .local v14, "lastIndex$iv":I
    move-object v15, v12

    check-cast v15, Ljava/lang/Iterable;

    .local v15, "$this$mapIndexedNotNull$iv$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 125
    .local v16, "$i$f$mapIndexedNotNull":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object/from16 v17, v15

    .local v17, "$this$mapIndexedNotNullTo$iv$iv$iv":Ljava/lang/Iterable;
    const/16 v18, 0x0

    .line 135
    .local v18, "$i$f$mapIndexedNotNullTo":I
    move-object/from16 v19, v17

    .local v19, "$this$forEachIndexed$iv$iv$iv$iv":Ljava/lang/Iterable;
    const/16 v20, 0x0

    .line 136
    .local v20, "$i$f$forEachIndexed":I
    const/4 v1, 0x0

    .line 137
    .local v1, "index$iv$iv$iv$iv":I
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .local v22, "item$iv$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v23, v1, 0x1

    .end local v1    # "index$iv$iv$iv$iv":I
    .local v23, "index$iv$iv$iv$iv":I
    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .local v1, "index$iv$iv$iv":I
    :cond_0
    move-object/from16 v24, v22

    .local v24, "element$iv$iv$iv":Ljava/lang/Object;
    move/from16 v25, v1

    .end local v1    # "index$iv$iv$iv":I
    .local v25, "index$iv$iv$iv":I
    const/16 v26, 0x0

    .line 135
    .local v26, "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv$iv":I
    move-object/from16 v27, v24

    check-cast v27, Ljava/lang/String;

    .local v27, "value$iv":Ljava/lang/String;
    move/from16 v5, v25

    .local v5, "index$iv":I
    const/16 v28, 0x0

    .line 138
    .local v28, "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1$iv":I
    const/16 v29, 0x0

    if-eqz v5, :cond_1

    if-ne v5, v14, :cond_2

    :cond_1
    move-object/from16 v1, v27

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    move/from16 v31, v5

    move-object v7, v6

    goto/16 :goto_4

    .line 141
    :cond_2
    move-object/from16 v4, v27

    .local v4, "line":Ljava/lang/String;
    const/16 v30, 0x0

    .line 38
    .local v30, "$i$a$-reindent-StringsKt__IndentKt$replaceIndentByMargin$2":I
    move-object v1, v4

    check-cast v1, Ljava/lang/CharSequence;

    .local v1, "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 142
    .local v2, "$i$f$indexOfFirst":I
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_1
    move/from16 v31, v2

    .end local v2    # "$i$f$indexOfFirst":I
    .local v31, "$i$f$indexOfFirst":I
    const/4 v2, -0x1

    if-ge v3, v0, :cond_4

    .line 143
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v32

    .local v32, "it":C
    const/16 v33, 0x0

    .line 38
    .local v33, "$i$a$-indexOfFirst-StringsKt__IndentKt$replaceIndentByMargin$2$firstNonWhitespaceIndex$1":I
    invoke-static/range {v32 .. v32}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v34

    .end local v32    # "it":C
    .end local v33    # "$i$a$-indexOfFirst-StringsKt__IndentKt$replaceIndentByMargin$2$firstNonWhitespaceIndex$1":I
    xor-int/lit8 v32, v34, 0x1

    if-eqz v32, :cond_3

    .line 144
    goto :goto_2

    .line 142
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v31

    goto :goto_1

    .line 147
    .end local v3    # "index$iv":I
    :cond_4
    move v3, v2

    .line 38
    .end local v1    # "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    .end local v31    # "$i$f$indexOfFirst":I
    :goto_2
    move v0, v3

    .line 40
    .local v0, "firstNonWhitespaceIndex":I
    nop

    .line 41
    if-ne v0, v2, :cond_5

    move-object v3, v4

    move/from16 v31, v5

    move-object v7, v6

    move-object/from16 v1, v29

    goto :goto_3

    .line 42
    :cond_5
    const/16 v31, 0x0

    const/16 v32, 0x4

    const/16 v33, 0x0

    move-object v1, v4

    move-object/from16 v2, p2

    move v3, v0

    move-object/from16 v35, v4

    .end local v4    # "line":Ljava/lang/String;
    .local v35, "line":Ljava/lang/String;
    move/from16 v4, v31

    move/from16 v31, v5

    .end local v5    # "index$iv":I
    .local v31, "index$iv":I
    move/from16 v5, v32

    move-object v7, v6

    .end local v6    # "destination$iv$iv$iv":Ljava/util/Collection;
    .local v7, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object/from16 v6, v33

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    move-object/from16 v3, v35

    .end local v35    # "line":Ljava/lang/String;
    .local v3, "line":Ljava/lang/String;
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 43
    .end local v3    # "line":Ljava/lang/String;
    .restart local v35    # "line":Ljava/lang/String;
    :cond_6
    move-object/from16 v3, v35

    .end local v35    # "line":Ljava/lang/String;
    .restart local v3    # "line":Ljava/lang/String;
    move-object/from16 v1, v29

    .line 40
    :goto_3
    nop

    .end local v0    # "firstNonWhitespaceIndex":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v30    # "$i$a$-reindent-StringsKt__IndentKt$replaceIndentByMargin$2":I
    if-eqz v1, :cond_7

    invoke-interface {v11, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    if-nez v29, :cond_8

    :cond_7
    move-object/from16 v29, v27

    .line 138
    :cond_8
    :goto_4
    nop

    .end local v27    # "value$iv":Ljava/lang/String;
    .end local v28    # "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1$iv":I
    .end local v31    # "index$iv":I
    if-eqz v29, :cond_9

    move-object/from16 v0, v29

    .line 148
    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 135
    .local v1, "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv$iv":I
    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv$iv":I
    goto :goto_5

    :cond_9
    nop

    .line 137
    .end local v22    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v24    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v25    # "index$iv$iv$iv":I
    .end local v26    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv$iv":I
    :goto_5
    move-object/from16 v0, p0

    move-object v6, v7

    move/from16 v1, v23

    move-object/from16 v7, p2

    goto/16 :goto_0

    .line 149
    .end local v7    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v23    # "index$iv$iv$iv$iv":I
    .local v1, "index$iv$iv$iv$iv":I
    .restart local v6    # "destination$iv$iv$iv":Ljava/util/Collection;
    :cond_a
    move-object v7, v6

    .line 150
    .end local v1    # "index$iv$iv$iv$iv":I
    .end local v6    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v19    # "$this$forEachIndexed$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v20    # "$i$f$forEachIndexed":I
    .restart local v7    # "destination$iv$iv$iv":Ljava/util/Collection;
    nop

    .end local v7    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v17    # "$this$mapIndexedNotNullTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v18    # "$i$f$mapIndexedNotNullTo":I
    move-object v0, v7

    check-cast v0, Ljava/util/List;

    .line 125
    nop

    .end local v15    # "$this$mapIndexedNotNull$iv$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$mapIndexedNotNull":I
    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Iterable;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Appendable;

    const-string v0, "\n"

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/CharSequence;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x7c

    const/16 v26, 0x0

    invoke-static/range {v17 .. v26}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    nop

    .line 37
    .end local v10    # "resultSizeEstimate$iv":I
    .end local v11    # "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    .end local v12    # "$this$reindent$iv":Ljava/util/List;
    .end local v13    # "$i$f$reindent":I
    .end local v14    # "lastIndex$iv":I
    return-object v0

    .line 122
    .end local v9    # "lines":Ljava/util/List;
    :cond_b
    const/4 v0, 0x0

    .line 34
    .local v0, "$i$a$-require-StringsKt__IndentKt$replaceIndentByMargin$1":I
    nop

    .end local v0    # "$i$a$-require-StringsKt__IndentKt$replaceIndentByMargin$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "marginPrefix must be non-blank string."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic replaceIndentByMargin$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 33
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string p2, "|"

    :cond_1
    invoke-static {p0, p1, p2}, Lkotlin/text/StringsKt;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trimIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$trimIndent"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$trimMargin"    # Ljava/lang/String;
    .param p1, "marginPrefix"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "marginPrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lkotlin/text/StringsKt;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 25
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "|"

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
